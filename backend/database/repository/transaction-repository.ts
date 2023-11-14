import { Order } from "../model/order.model";
import { Transaction } from "../model/transaction.model";
import { writeQuery } from "../pg-connection";

export class TransactionRepository {
  async createTransaction(
    { userId, paymentMethod, status, paymentId }: Transaction,
    { orderStatus, amount }: Order
  ) {
    try {
      const transactionSql =
        "INSERT INTO transaction (user_id, payment_method, status, payment_id) VALUES ($1, $2, $3, $4) RETURNING id";
      const transactionParams = [userId, paymentMethod, status, paymentId];
      const transactionResult = await writeQuery(
        transactionSql,
        transactionParams
      );

      const transactionId = transactionResult.rows[0].id;

      const orderSql =
        "INSERT INTO orders (user_id, status_id, amount, transaction_id) VALUES ($1, $2, $3, $4) RETURNING id";
      const orderParams = [userId, orderStatus, amount, transactionId];
      const orderResult = await writeQuery(orderSql, orderParams);

      const orderId = orderResult.rows[0].id;

      const cartItems = await this.CartGet(userId);

      for (const cartItem of cartItems) {
        const productId = cartItem.product_id;

        const stockQuery = "SELECT stock_unit FROM product WHERE id = $1";
        const stockResult = await writeQuery(stockQuery, [productId]);
        const currentStock = stockResult.rows[0].stock_unit;

        if (currentStock <= cartItem.item_qty) {
          const updateProductSql =
            "UPDATE product SET stock_unit = 0, is_visible = false WHERE id = $1";
          await writeQuery(updateProductSql, [productId]);
        } else {
          const newStock = currentStock - cartItem.item_qty;
          const updateProductSql =
            "UPDATE product SET stock_unit = $1 WHERE id = $2";
          await writeQuery(updateProductSql, [newStock, productId]);
        }

        const orderItemSql =
          "INSERT INTO order_item (order_id, product_id, name, price, image_url, item_qty) VALUES ($1, $2, $3, $4, $5, $6)";
        const orderItemParams = [
          orderId,
          productId,
          cartItem.name,
          cartItem.price,
          cartItem.image_url,
          cartItem.item_qty,
        ];
        await writeQuery(orderItemSql, orderItemParams);
      }

      return orderResult.rows;
    } catch (error) {
      throw error;
    }
  }

  async CartGet(userId: number) {
    try {
      const cartSql = "SELECT id FROM cart WHERE user_id = $1";
      const cartParams = [userId];
      const result = await writeQuery(cartSql, cartParams);

      const cartId = result.rows[0].id;

      const sql = "SELECT * FROM cart_item WHERE cart_id = $1";
      const params = [cartId];
      const cartItems = await writeQuery(sql, params);
      return cartItems.rows;
    } catch (error) {
      throw error;
    }
  }
}
