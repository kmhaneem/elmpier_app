import { Transaction } from "../model/transaction.model";
import { writeQuery } from "../pg-connection";

export class ElmpierPlusRepository {
  async EPlusCreate(
    id: number,
    { paymentMethod, status, paymentId }: Transaction
  ) {
    try {
      const transactionSql =
        "INSERT INTO transaction (user_id, payment_method, status, payment_id) VALUES ($1, $2, $3, $4) RETURNING id";

      const transactionParams = [id, paymentMethod, status, paymentId];
      await writeQuery(transactionSql, transactionParams);
      const sql = "UPDATE users SET is_plus_user = true WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      setTimeout(() => {
        this.resetEPlus(id);
      }, 86400000);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async EPlusCheck(id: number){
    try {
        const sql = "SELECT is_plus_user FROM users WHERE id = $1"
        const params = [id]
        const result = await writeQuery(sql, params)
        return result.rows
    } catch (error){
        throw error
    }
  }

  async resetEPlus(id: number) {
    try {
      const sql = "UPDATE users SET is_plus_user = false WHERE id = $1";
      await writeQuery(sql, [id]);
    } catch (error) {
      console.error("Error resetting EPlus", id, ":", error);
    }
  }
}
