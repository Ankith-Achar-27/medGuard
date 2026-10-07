import app from "./app.js";
import { env } from "./config/env.js";
import pool from "./config/database.js";
import { importMedicines } from "./scripts/importMedicines.js";

app.listen(env.port, async () => {
  console.log(
    `MedGuard server running at http://localhost:${env.port}`
  );

  // Auto-seed medicines if remote database has few or no medicines
  try {
    const res = await pool.query(
      "SELECT COUNT(*)::integer AS count FROM medicines"
    );
    const count = res.rows[0]?.count ?? 0;
    console.log(`Current medicines in database: ${count}`);

    if (count < 100) {
      console.log(
        "Medicines count < 100. Starting automatic background import of 222,801 medicines into database..."
      );
      importMedicines()
        .then(() =>
          console.log(
            "Background dataset import of 222,801 medicines completed successfully!"
          )
        )
        .catch((err) =>
          console.error("Background dataset import failed:", err)
        );
    }
  } catch (err: any) {
    console.warn("Could not check medicines count:", err?.message);
  }
});