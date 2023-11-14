import { Order } from "../model/order.model";
import { writeQuery } from "../pg-connection";

export class OrdeRepository {
  async OrderGet(userId: number) {
    try {
      const orderSql = "SELECT id FROM orders WHERE user_id = $1";
      const orderResult = await writeQuery(orderSql, [userId]);

      if (!orderResult.rows.length) return [];

      const orderIds = orderResult.rows.map((row) => row.id);

      const sql = "SELECT * FROM order_item WHERE order_id = ANY($1)";
      const result = await writeQuery(sql, [orderIds]);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }
}
