import { Pool } from "pg";
import dotenv from "dotenv";
import path from "path";
dotenv.config({ path: path.resolve(__dirname, "../config/.env") });


const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  database: process.env.DB_DATABASE,
  password: process.env.DB_PASSWORD,
  port: Number(process.env.DB_PORT),
});

pool
  .connect()
  .then(() => console.log("Connected successfully."))
  .catch((err) => console.error("Connection error", err.stack));

export const writeQuery = async (sql: string, params: any[]): Promise<any> => {
  const client = await pool.connect();
  try {
    const res = await client.query(sql, params);
    return { rows: res.rows, rowCount: res.rowCount };
  } catch (err) {
    console.error("Error executing query", err);
    throw err;
  } finally {
    client.release();
  }
};

export default pool;
