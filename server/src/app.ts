import express from "express";
import cors from "cors";

import patientRoutes from "./routes/patientRoutes.js";
import medicineRoutes from "./routes/medicineRoutes.js";
import assessmentRoutes from "./routes/assessmentRoutes.js";
import alternativeRoutes from "./routes/alternativeRoutes.js";
import reportRoutes from "./routes/reportRoutes.js";
import authRoutes from "./routes/auth.js";

const app = express();

/*
 * CORS
 */
app.use(
  cors({
    origin: process.env.CLIENT_URL || true,
    credentials: true,
  }),
);

/*
 * Body parsers
 *
 * IMPORTANT:
 * These must come BEFORE the routes.
 */
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

/*
 * Health check
 */
app.get("/api/health", (_req, res) => {
  res.json({
    success: true,
    message: "MedGuard server is running",
  });
});

/*
 * Admin / Dataset import endpoints
 */
let isImporting = false;
let lastImportStatus = "idle";

app.get("/api/admin/import-status", async (_req, res) => {
  try {
    const { default: pool } = await import("./config/database.js");
    const countRes = await pool.query(
      "SELECT COUNT(*)::integer AS count FROM medicines"
    );
    res.json({
      success: true,
      isImporting,
      lastImportStatus,
      medicinesCount: countRes.rows[0]?.count ?? 0,
    });
  } catch (err: any) {
    res.status(500).json({ success: false, error: err?.message });
  }
});

app.all("/api/admin/import-medicines", async (_req, res) => {
  if (isImporting) {
    return res.json({
      success: true,
      message: "Import is already running in background.",
      status: lastImportStatus,
    });
  }

  isImporting = true;
  lastImportStatus = "running";

  res.json({
    success: true,
    message: "Started 222,801 medicines background import on server.",
  });

  try {
    const { importMedicines } = await import("./scripts/importMedicines.js");
    await importMedicines();
    lastImportStatus = "completed";
  } catch (err: any) {
    lastImportStatus = `failed: ${err?.message}`;
    console.error("Dataset import failed:", err);
  } finally {
    isImporting = false;
  }
});

/*
 * Routes
 */
app.use("/api/patients", patientRoutes);
app.use("/api/medicines", medicineRoutes);
app.use("/api/assessments", assessmentRoutes);
app.use("/api/alternatives", alternativeRoutes);
app.use("/api/reports", reportRoutes);
app.use("/api/auth", authRoutes);

/*
 * 404 handler
 */
app.use((_req, res) => {
  res.status(404).json({
    success: false,
    message: "Route not found.",
  });
});

/*
 * Error handler
 */
app.use(
  (
    error: unknown,
    _req: express.Request,
    res: express.Response,
    _next: express.NextFunction,
  ) => {
    console.error("Unhandled server error:", error);

    res.status(500).json({
      success: false,
      message: "Internal server error.",
    });
  },
);

export default app;
