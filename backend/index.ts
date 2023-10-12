import express from "express";
import pool from "./database/pg-connection";
import userRoutes from "./api/user-api";
import productRoutes from "./api/product-api";
import adminRoutes from "./api/admin-api"

const app = express();
app.use(express.json());

adminRoutes(app);
productRoutes(app);
userRoutes(app);

app.use((req, res) => {
  pool.query("SELECT NOW()", (err, result) => {
    if (err) {
      return res.status(500).json({ error: "Database connection failed" });
    }
    return res.json({
      message: "Hello message",
      currentTime: result.rows[0].now,
    });
  });
});

app.listen(3000, () => {
  console.log("App is running on port 3000");
});
