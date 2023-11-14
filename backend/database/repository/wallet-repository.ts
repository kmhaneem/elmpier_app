import { Transaction } from "../model/transaction.model";
import { Wallet } from "../model/wallet.model";
import { writeQuery } from "../pg-connection";

export class WalletRepository {
  async AmountAdd(userId: number, amount: number, { paymentMethod, status, paymentId }: Transaction) {
    try {
      const transactionSql =
        "INSERT INTO transaction (user_id, payment_method, status, payment_id) VALUES ($1, $2, $3, $4) RETURNING id";

      const transactionParams = [userId, paymentMethod, status, paymentId];
      await writeQuery(transactionSql, transactionParams);
      const sql =
        "UPDATE wallet SET amount = $1 WHERE user_id = $2 RETURNING *";
      const params = [amount, userId];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AmountGet(userId: number) {
    try {
      const sql = "SELECT amount FROM wallet WHERE user_id = $1";
      const params = [userId];
      const response = await writeQuery(sql, params);
      return response.rows;
    } catch (error) {
      throw error;
    }
  }
}
