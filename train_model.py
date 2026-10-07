import os
import joblib
import pandas as pd

from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.preprocessing import MultiLabelBinarizer
from sklearn.multiclass import OneVsRestClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import (
    f1_score,
    hamming_loss,
    accuracy_score
)


# =========================================================
# CONFIGURATION
# =========================================================

DATA_PATH = "medicine_dataset_cleaned.csv"
MODEL_PATH = "adr_model.joblib"

RANDOM_STATE = 42

print("=" * 70)
print("AI-BASED ADR PREDICTION MODEL TRAINING")
print("=" * 70)


# =========================================================
# LOAD DATASET
# =========================================================

print("\nLoading dataset...")

if not os.path.exists(DATA_PATH):
    raise FileNotFoundError(
        f"{DATA_PATH} not found."
    )

df = pd.read_csv(
    DATA_PATH,
    low_memory=False
)

print(
    f"Dataset loaded: {len(df):,} rows"
)


# =========================================================
# CLEANING FUNCTION
# =========================================================

def clean_value(value):

    if pd.isna(value):
        return ""

    value = str(value).strip()

    if value.lower() in {
        "",
        "empty",
        "nan",
        "none",
        "null"
    }:
        return ""

    return value


# =========================================================
# COLUMN DEFINITIONS
# =========================================================

side_cols = [
    f"sideEffect{i}"
    for i in range(42)
    if f"sideEffect{i}" in df.columns
]

use_cols = [
    f"use{i}"
    for i in range(5)
    if f"use{i}" in df.columns
]

meta_cols = [
    column
    for column in [
        "Therapeutic Class",
        "Action Class",
        "Chemical Class",
        "Habit Forming"
    ]
    if column in df.columns
]


# =========================================================
# CREATE MULTI-LABEL ADR TARGET
# =========================================================

print("\nCreating ADR labels...")


def get_labels(row):

    labels = []

    for column in side_cols:

        value = clean_value(
            row[column]
        ).lower()

        if value:

            # Normalize whitespace
            value = " ".join(
                value.split()
            )

            labels.append(value)

    # Remove duplicate ADRs within one record
    return list(
        dict.fromkeys(labels)
    )


df["labels"] = df.apply(
    get_labels,
    axis=1
)


# =========================================================
# CREATE INPUT TEXT FEATURES
# =========================================================

print("Creating text features...")


def get_text(row):

    parts = []

    # Medicine name
    if "name" in row.index:

        value = clean_value(
            row["name"]
        )

        if value:
            parts.append(
                value.lower()
            )

    # Medical uses
    for column in use_cols:

        value = clean_value(
            row[column]
        )

        if value:
            parts.append(
                value.lower()
            )

    # Medicine classification
    for column in meta_cols:

        value = clean_value(
            row[column]
        )

        if value:
            parts.append(
                value.lower()
            )

    return " ".join(parts)


df["text"] = df.apply(
    get_text,
    axis=1
)


# =========================================================
# REMOVE INVALID RECORDS
# =========================================================

df = df[
    (df["text"].str.len() > 0) &
    (df["labels"].map(len) > 0)
].copy()

print(
    f"Usable records: {len(df):,}"
)


# =========================================================
# REMOVE DUPLICATE RECORDS
# =========================================================

before_duplicates = len(df)

# Convert the ADR label list into a hashable string
# temporarily so pandas can identify duplicate records.
df["_labels_key"] = df["labels"].apply(
    lambda labels: "|".join(sorted(labels))
)

df = df.drop_duplicates(
    subset=["text", "_labels_key"]
).copy()

# Remove the temporary column
df.drop(
    columns=["_labels_key"],
    inplace=True
)

after_duplicates = len(df)

print(
    f"Duplicate records removed: "
    f"{before_duplicates - after_duplicates:,}"
)

print(
    f"Records after duplicate removal: "
    f"{len(df):,}"
)


# =========================================================
# COUNT ADR CLASSES
# =========================================================

print("\nAnalyzing ADR class distribution...")

label_counts = {}

for labels in df["labels"]:

    for label in labels:

        label_counts[label] = (
            label_counts.get(label, 0) + 1
        )


# =========================================================
# REMOVE VERY RARE ADR CLASSES
# =========================================================

MIN_LABEL_COUNT = 20

valid_labels = {
    label
    for label, count in label_counts.items()
    if count >= MIN_LABEL_COUNT
}


df["labels"] = df["labels"].apply(
    lambda labels: [
        label
        for label in labels
        if label in valid_labels
    ]
)


df = df[
    df["labels"].map(len) > 0
].copy()


print(
    f"ADR classes retained: "
    f"{len(valid_labels):,}"
)

print(
    f"Records after label filtering: "
    f"{len(df):,}"
)


# =========================================================
# TRAIN / TEST SPLIT
# =========================================================

print("\nCreating train/test split...")

train_df, test_df = train_test_split(
    df,
    test_size=0.20,
    random_state=RANDOM_STATE,
    shuffle=True
)


print(
    f"Training records: "
    f"{len(train_df):,}"
)

print(
    f"Testing records:  "
    f"{len(test_df):,}"
)


# =========================================================
# TF-IDF FEATURE EXTRACTION
# =========================================================

print("\nCreating TF-IDF features...")
print("Using unigrams + bigrams...")


vectorizer = TfidfVectorizer(

    ngram_range=(1, 2),

    min_df=2,

    max_df=0.98,

    max_features=75000,

    sublinear_tf=True,

    strip_accents="unicode",

    lowercase=True
)


X_train = vectorizer.fit_transform(
    train_df["text"]
)

X_test = vectorizer.transform(
    test_df["text"]
)


print(
    f"TF-IDF features: "
    f"{X_train.shape[1]:,}"
)


# =========================================================
# MULTI-LABEL ENCODING
# =========================================================

print("\nEncoding ADR labels...")

mlb = MultiLabelBinarizer()

Y_train = mlb.fit_transform(
    train_df["labels"]
)

Y_test = mlb.transform(
    test_df["labels"]
)


print(
    f"Number of ADR classes: "
    f"{len(mlb.classes_):,}"
)


# =========================================================
# TRAIN LOGISTIC REGRESSION MODEL
# =========================================================

print("\nTraining Logistic Regression model...")
print("One-vs-Rest multi-label classification")
print("This may take some time...\n")


classifier = OneVsRestClassifier(
    LogisticRegression(
        max_iter=250,
        solver="liblinear",
        class_weight="balanced"
    ),
    n_jobs=1
)


classifier.fit(
    X_train,
    Y_train
)


print("\nModel training completed.")


# =========================================================
# GENERATE PROBABILITY PREDICTIONS
# =========================================================

print("\nGenerating probability predictions...")

Y_prob = classifier.predict_proba(
    X_test
)


# =========================================================
# THRESHOLD OPTIMIZATION
# =========================================================

print("\nSearching for the best prediction threshold...")

thresholds = [
    0.10,
    0.15,
    0.20,
    0.25,
    0.30,
    0.35,
    0.40,
    0.45,
    0.50
]


best_threshold = 0.30
best_micro_f1 = -1

threshold_results = []


print()
print(
    "-" * 70
)


for threshold in thresholds:

    # Convert probabilities into binary predictions
    Y_pred_temp = (
        Y_prob >= threshold
    ).astype(int)


    # Exact-match accuracy
    exact_temp = accuracy_score(
        Y_test,
        Y_pred_temp
    )


    # Micro F1
    micro_temp = f1_score(
        Y_test,
        Y_pred_temp,
        average="micro",
        zero_division=0
    )


    # Macro F1
    macro_temp = f1_score(
        Y_test,
        Y_pred_temp,
        average="macro",
        zero_division=0
    )


    # Hamming loss
    hamming_temp = hamming_loss(
        Y_test,
        Y_pred_temp
    )


    threshold_results.append({

        "threshold": threshold,

        "exact_match": exact_temp,

        "micro_f1": micro_temp,

        "macro_f1": macro_temp,

        "hamming_loss": hamming_temp

    })


    print(
        f"Threshold: {threshold:.2f} | "
        f"Exact: {exact_temp:.4f} | "
        f"Micro F1: {micro_temp:.4f} | "
        f"Macro F1: {macro_temp:.4f} | "
        f"Hamming: {hamming_temp:.4f}"
    )


    # Select threshold with highest Micro F1
    if micro_temp > best_micro_f1:

        best_micro_f1 = micro_temp

        best_threshold = threshold


print(
    "-" * 70
)

print()
print(
    f"Best threshold selected: "
    f"{best_threshold:.2f}"
)

print(
    f"Best Micro F1-score: "
    f"{best_micro_f1:.4f}"
)


# =========================================================
# FINAL PREDICTIONS USING BEST THRESHOLD
# =========================================================

print("\nGenerating final predictions...")

Y_pred = (
    Y_prob >= best_threshold
).astype(int)


# =========================================================
# FINAL MODEL EVALUATION
# =========================================================

exact_match = accuracy_score(
    Y_test,
    Y_pred
)


micro_f1 = f1_score(
    Y_test,
    Y_pred,
    average="micro",
    zero_division=0
)


macro_f1 = f1_score(
    Y_test,
    Y_pred,
    average="macro",
    zero_division=0
)


hamming = hamming_loss(
    Y_test,
    Y_pred
)


# =========================================================
# DISPLAY FINAL RESULTS
# =========================================================

print()
print("=" * 70)
print("ADR MULTI-LABEL MODEL TRAINING COMPLETE")
print("=" * 70)

print(
    f"Total usable records: "
    f"{len(df):,}"
)

print(
    f"Training records:     "
    f"{len(train_df):,}"
)

print(
    f"Testing records:      "
    f"{len(test_df):,}"
)

print(
    f"ADR classes:          "
    f"{len(mlb.classes_):,}"
)

print(
    f"TF-IDF features:      "
    f"{X_train.shape[1]:,}"
)

print(
    f"Best threshold:       "
    f"{best_threshold:.2f}"
)

print()
print("MODEL PERFORMANCE")
print("-" * 70)

print(
    f"Exact-match accuracy: "
    f"{exact_match:.4f}"
)

print(
    f"Micro F1-score:       "
    f"{micro_f1:.4f}"
)

print(
    f"Macro F1-score:       "
    f"{macro_f1:.4f}"
)

print(
    f"Hamming loss:         "
    f"{hamming:.4f}"
)


# =========================================================
# SAVE TRAINED MODEL
# =========================================================

artifact = {

    "vectorizer": vectorizer,

    "classifier": classifier,

    "classes": mlb.classes_,

    # IMPORTANT:
    # Flask will use this same threshold
    "threshold": float(
        best_threshold
    ),

    "metadata": {

        "min_label_count":
            MIN_LABEL_COUNT,

        "n_records":
            int(len(df)),

        "n_train":
            int(len(train_df)),

        "n_test":
            int(len(test_df)),

        "n_classes":
            int(len(mlb.classes_)),

        "n_features":
            int(X_train.shape[1]),

        "threshold":
            float(best_threshold),

        "exact_match_accuracy":
            float(exact_match),

        "micro_f1":
            float(micro_f1),

        "macro_f1":
            float(macro_f1),

        "hamming_loss":
            float(hamming)

    }

}


joblib.dump(
    artifact,
    MODEL_PATH
)


# =========================================================
# FINISHED
# =========================================================

print()
print(
    f"Saved trained model to: "
    f"{MODEL_PATH}"
)

print()
print("Training finished successfully!")
print("=" * 70)
