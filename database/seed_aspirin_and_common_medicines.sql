-- ====================================================================
-- MEDGUARD SEED SCRIPT: ASPIRIN & 150 MOST COMMON CLINICAL MEDICINES
-- Run this directly in your Supabase SQL Editor
-- ====================================================================

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('Amoxicillin', 'Amoxicillin', 'Antibiotic', 'Penicillin Antibiotic', 'Beta-lactam', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Bacterial infections');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Ear infections');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Respiratory infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Skin rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asp 100mg/325mg/15mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asp 500mg tablet', NULL, 'ANTI INFECTIVES', 'Macrolides', 'Macrolides', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asp s tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspa 20mg/500mg tablet', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Blurred vision');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nervousness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Weakness');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspa 500mg/250mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Pain due to muscle spasm');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Weakness');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspa plus 500mg/50mg/500mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Pain due to muscle spasm');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspacetam 800 tablet', NULL, 'NEURO CNS', 'Nootropic agent', 'Alpha Amino Acids Derivatives', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Age related memory loss');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Alzheimer''s disease');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Dementia in Parkinson''s disease');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Head injury');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abnormality of voluntary movements');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nervousness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Weight gain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspacin 250mg tablet', NULL, 'ANTI INFECTIVES', 'Macrolides', 'Macrolides', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspacin 500mg tablet', NULL, 'ANTI INFECTIVES', 'Macrolides', 'Macrolides', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspagel gel', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Application site reactions (burning, irritation, itching and redness)');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspagol powder husk orange', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal distension');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'High blood pressure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased creatine phosphokinase (CPK) level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upper respiratory tract infection');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspan-d 10mg/40mg tablet', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspan-dsr capsule', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspan 40mg injection', NULL, 'GASTRO INTESTINAL', 'Proton pump inhibitors', 'Sulfinylbenzimidazole Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Heartburn');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Joint pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Thrombophlebitis');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspan 40mg tablet', NULL, 'GASTRO INTESTINAL', 'Proton pump inhibitors', 'Sulfinylbenzimidazole Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Heartburn');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspan d 10mg/40mg tablet', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspan it 40mg/150mg tablet', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased saliva production');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspanz 40mg tablet', NULL, 'GASTRO INTESTINAL', 'Proton pump inhibitors', 'Sulfinylbenzimidazole Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Heartburn');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspanz dsr capsule', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspar 100mg tablet', NULL, 'OPHTHAL', 'Quinolones/ Fluroquinolones', 'Fluoroquinolone', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bitter taste');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspar 200mg tablet', NULL, 'OPHTHAL', 'Quinolones/ Fluroquinolones', 'Fluoroquinolone', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bitter taste');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asparget 10000iu injection', NULL, 'ANTI NEOPLASTICS', 'Anticancer-others', 'Enzyme', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Blood cancer (Acute lymphocytic leukemia)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Angioedema (swelling of deeper layers of skin)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Breathlessness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased blood pressure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Edema (swelling)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flushing (sense of warmth in the face, ears, neck and trunk)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hives');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased glucose level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Low albumin level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asparshil 10000iu injection', NULL, 'ANTI NEOPLASTICS', 'Anticancer-others', 'Enzyme', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Blood cancer (Acute lymphocytic leukemia)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Angioedema (swelling of deeper layers of skin)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Breathlessness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased blood pressure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Edema (swelling)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flushing (sense of warmth in the face, ears, neck and trunk)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hives');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased glucose level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Low albumin level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspavak sp 100mg/325mg/15mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspazin-m 5mg/10mg tablet', NULL, 'RESPIRATORY', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Allergic skin conditions');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Hay fever');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Sneezing and runny nose due to allergies');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Skin rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspeeday 75mg tablet', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspeeday 75mg tablet er', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspen 40mg injection', NULL, 'GASTRO INTESTINAL', 'Proton pump inhibitors', 'Sulfinylbenzimidazole Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Heartburn');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Joint pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Thrombophlebitis');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspen sp tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspenem 1000mg injection', NULL, 'ANTI INFECTIVES', 'Cell wall active agent -Carbapenems', 'Carbapenem derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Severe bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Anemia (low number of red blood cells)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspenem 500mg injection', NULL, 'ANTI INFECTIVES', 'Cell wall active agent -Carbapenems', 'Carbapenem derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Severe bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Anemia (low number of red blood cells)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspent 60mg tablet', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspenta d 10mg/40mg tablet', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspenta d 30mg/40mg capsule sr', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspera 40mg tablet', NULL, 'GASTRO INTESTINAL', 'Proton pump inhibitors', 'Sulfinylbenzimidazole Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspera ls 75mg/40mg capsule sr', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asperag 10000iu injection', NULL, 'ANTI NEOPLASTICS', 'Anticancer-others', 'Enzyme', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Blood cancer (Acute lymphocytic leukemia)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Angioedema (swelling of deeper layers of skin)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Breathlessness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased blood pressure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Edema (swelling)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flushing (sense of warmth in the face, ears, neck and trunk)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hives');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased glucose level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Low albumin level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asphylin 100mg capsule', NULL, 'RESPIRATORY', 'Theophylline & its derivatives', 'Xanthinic Derivatives', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Chronic obstructive pulmonary disease (COPD)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Restlessness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asphyllin expectorant', NULL, 'RESPIRATORY', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Cough with mucus');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Arrhythmia (irregular heartbeats)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bloating');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Changes in serum aminotransferase levels');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Excessive salivation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased heart rate');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Itching');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Paresthesia (tingling or pricking sensation)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach discomfort');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sweating');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Tremors');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upper abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Urticaria');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asphyllin tablet', NULL, 'RESPIRATORY', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Cough');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Allergic reaction');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased heart rate');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Muscle cramp');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Palpitations');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Tremors');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspicef lb 200mg tablet', NULL, 'ANTI INFECTIVES', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bloating');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspicet 5mg tablet', NULL, 'RESPIRATORY', 'H1 Antihistaminics (second Generation)', 'Piperazine Derivatives', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Allergic conditions');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nasopharyngitis (inflammation of the throat and nasal passages)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspicet m 5mg/10mg tablet', NULL, 'RESPIRATORY', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Allergic skin conditions');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Hay fever');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Sneezing and runny nose due to allergies');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Skin rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspicet m syrup', NULL, 'RESPIRATORY', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Allergic skin conditions');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Hay fever');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Sneezing and runny nose due to allergies');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Skin rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspiclav lb 500mg/125mg tablet', NULL, 'ANTI INFECTIVES', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Allergic reaction');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspide 100 tablet', NULL, 'NEURO CNS', 'Atypical Antipsychotics', 'Denzamide Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Schizophrenia');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Akathisia (inability to stay still)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased blood pressure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dystonia (involuntary muscle contractions)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased prolactin level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Parkinsonism');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Weight gain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspide 200 tablet', NULL, 'NEURO CNS', 'Atypical Antipsychotics', 'Denzamide Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Schizophrenia');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Akathisia (inability to stay still)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased blood pressure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dystonia (involuntary muscle contractions)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased prolactin level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Parkinsonism');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Weight gain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspide 50 tablet', NULL, 'NEURO CNS', 'Atypical Antipsychotics', 'Denzamide Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Schizophrenia');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Akathisia (inability to stay still)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased blood pressure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dystonia (involuntary muscle contractions)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased prolactin level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Parkinsonism');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Weight gain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspidel 150 capsule', NULL, 'BLOOD RELATED', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bruise');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Gastrointestinal bleeding');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nosebleeds');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspidol 75 tablet', NULL, 'BLOOD RELATED', 'P2Y12 inhibitors (ADP receptor)', 'Alpha amino acid esters', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bleeding');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspidol tablet', NULL, 'BLOOD RELATED', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bruise');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Gastrointestinal bleeding');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nosebleeds');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspidot 75mg tablet', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspifast gel', NULL, 'PAIN ANALGESICS', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (propionic acid)', 'Propionic acid Derivatives', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'No common side effects seen');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspigrel 150 mg/75 mg tablet', NULL, 'BLOOD RELATED', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bruise');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Gastrointestinal bleeding');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nosebleeds');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspigrel loading 150 mg/75 mg tablet', NULL, 'BLOOD RELATED', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bruise');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Gastrointestinal bleeding');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nosebleeds');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspijet 100mg/325mg/15mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspin 100mg tablet', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspin 300mg tablet dt', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspine at 5mg/50mg tablet', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Hypertension (high blood pressure)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Ankle swelling');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Cold extremities');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Edema (swelling)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flushing (sense of warmth in the face, ears, neck and trunk)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Palpitations');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Slow heart rate');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Tiredness');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspiptazo 1.125gm injection', NULL, 'ANTI INFECTIVES', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Allergic reaction');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspira-s tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspira 100mg/500mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain/epigastric pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspira mr 60mg/4mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Pain due to muscle spasm');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Feet swelling');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flu-like symptoms');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Swelling of hands');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspire 9mg tablet xr', NULL, 'NEURO CNS', 'Atypical Antipsychotics', 'Benzisoxazole Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Mania');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Schizophrenia');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abnormal involuntary movements');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nystagmus (involuntary eye movement)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Tremors');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspire tablet xr', NULL, 'NEURO CNS', 'Atypical Antipsychotics', 'Benzisoxazole Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Mania');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Schizophrenia');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abnormal involuntary movements');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nystagmus (involuntary eye movement)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Tremors');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspirin 300mg tablet', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspirin 50mg tablet dr', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspirose 10mg/75mg capsule', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Muscle pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Weakness');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspisol 150 tablet', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspisol av 10mg/75mg capsule', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hepatitis (viral infection of liver)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Reye''s syndrome like symptoms');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspisol av capsule', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hepatitis (viral infection of liver)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Reye''s syndrome like symptoms');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspitrate 30 mg/150 mg capsule', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Angina (heart-related chest pain)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flushing of skin');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Itching');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upper respiratory tract infection');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspitrate g 60 mg/150 mg capsule', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Angina (heart-related chest pain)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fatigue');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flushing of skin');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Itching');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upper respiratory tract infection');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspivas 10 mg/75 mg capsule', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hepatitis (viral infection of liver)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Reye''s syndrome like symptoms');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspo 150 tablet', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspo 75 tablet', NULL, 'BLOOD RELATED', 'NSAID''s- Non-Selective COX 1&2 Inhibitors (Salicylates)', 'Acylsalicylic Acid Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Prevention of Angina (heart-related chest pain)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Heart attack');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment and prevention of Stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bleeding tendency');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Upset stomach');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspo av 75 capsule', NULL, 'CARDIAC', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Prevention of heart attack and stroke');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hepatitis (viral infection of liver)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Reye''s syndrome like symptoms');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspocef 200mg tablet dt', NULL, 'ANTI INFECTIVES', 'Cephalosporins: 3 generation', 'Broad spectrum (Third & fourth generation cephalosporins}', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspocef o 200mg/200mg tablet', NULL, 'ANTI INFECTIVES', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Acute renal failure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Agranulocytosis (deficiency of granulocytes in the blood)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Breathlessness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased white blood cell count (lymphocytes)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased white blood cell count (neutrophils)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Drug fever');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Drug rash with eosinophilia and systemic symptoms (DRESS) syndrome');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Erythema multiforme');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Gastrointestinal disturbance');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Granulocytopenia');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hemolytic anemia');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hypereosinophilia');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hypersensitivity');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased bilirubin in the blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased blood urea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Inflammation of tendons');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Insomnia (difficulty in sleeping)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Itching');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Jaundice');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Joint pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Low blood platelets');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Paresthesia (tingling or pricking sensation)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Pseudomembranous colitis');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Psychotic disorder');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Seizure');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Serum sickness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stevens-Johnson syndrome');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Tendon rupture');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Thrombocytosis');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Toxic epidermal necrolysis');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Visual disturbance');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspocox 120mg tablet', NULL, 'PAIN ANALGESICS', 'NSAID''s -Selective COX-2 Inhibitors', 'Sulfone and Pyridine Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspocox 90mg tablet', NULL, 'PAIN ANALGESICS', 'NSAID''s -Selective COX-2 Inhibitors', 'Sulfone and Pyridine Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Bronchospasm');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Esophagitis');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Oral ulcer');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspocox p 60mg/325mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Feet swelling');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flu-like symptoms');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Swelling of hands');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspocox th 60mg/4mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Pain due to muscle spasm');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Feet swelling');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flu-like symptoms');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Swelling of hands');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspod 200mg tablet', NULL, 'ANTI INFECTIVES', 'Cephalosporins: 3 generation', 'Broad Spectrum (Third & fourth generation cephalosporins)', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspod cv 200mg/125mg tablet', NULL, 'ANTI INFECTIVES', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Respiratory tract infection');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspodix 100mg dry syrup', NULL, 'ANTI INFECTIVES', 'Cephalosporins: 3 generation', 'Broad Spectrum (Third & fourth generation cephalosporins)', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspodix 50mg dry syrup', NULL, 'ANTI INFECTIVES', 'Cephalosporins: 3 generation', 'Broad Spectrum (Third & fourth generation cephalosporins)', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspodix cv forte dry syrup', NULL, 'ANTI INFECTIVES', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Respiratory tract infection');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspofag 40mg injection', NULL, 'GASTRO INTESTINAL', 'Proton pump inhibitors', 'Sulfinylbenzimidazole Derivative', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Gastroesophageal reflux disease (Acid reflux)');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Peptic ulcer disease');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Headache');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Injection site reaction');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspofen d 80mg/250mg tablet', NULL, 'GASTRO INTESTINAL', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Agranulocytosis (deficiency of granulocytes in the blood)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Breathlessness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Confusion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Constipation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased white blood cell count (lymphocytes)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Depression');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fast heart rate');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Flatulence');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Hypotension (low blood pressure)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased white blood cell count (eosinophils)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Insomnia (difficulty in sleeping)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Low blood platelets');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Purpura');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Ringing in ear');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach inflammation');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sweating');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vertigo');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspofen p ds oral suspension', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Fever');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspofen spas 10mg/250mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Abdominal cramp');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Menstrual pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Blurred vision');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dizziness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Dryness in mouth');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nervousness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Sleepiness');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Weakness');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspoheal 90mg/48mg/100mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'No common side effects seen');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspoheal d tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspomox cv 500mg/125mg tablet', NULL, 'ANTI INFECTIVES', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('aspomox cv forte dry syrup', NULL, 'ANTI INFECTIVES', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Bacterial infections');
  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Treatment of Resistant Tuberculosis (TB)');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Abdominal pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Allergy');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Skin rash');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asponac p 100mg/325mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain/epigastric pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asponac sp 100mg/325mg/15mg tablet', NULL, 'PAIN ANALGESICS', NULL, NULL, FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Pain relief');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Heartburn');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Indigestion');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Loss of appetite');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Nausea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Stomach pain');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Vomiting');
END $$;

DO $$
DECLARE
  new_id INT;
BEGIN
  INSERT INTO medicines (name, generic_name, therapeutic_class, action_class, chemical_class, habit_forming)
  VALUES ('asponet 50 injection', NULL, 'OTHERS', 'Fungal cell wall synthesis inhibitor (Echiocandins)', 'Echinocandins', FALSE)
  RETURNING id INTO new_id;

  INSERT INTO medicine_uses (medicine_id, use_name) VALUES (new_id, 'Severe fungal infections');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Chills');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Decreased potassium level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Diarrhea');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Fever');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased alkaline phosphatase level in blood');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Increased liver enzymes');
  INSERT INTO medicine_side_effects (medicine_id, side_effect_name) VALUES (new_id, 'Rash');
END $$;

