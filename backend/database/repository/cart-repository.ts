import { Cart, CartItem } from "../model/cart.model";
import { writeQuery } from "../pg-connection";

export class CartRepository {
  async CartAdd(
    { cartId, productId, name, price, itemQty, imageUrl }: CartItem,
    userId: number
  ) {
    try {
      const productCheckSql = "SELECT stock_unit FROM product WHERE id = $1";
      const product = await writeQuery(productCheckSql, [productId]);
      if (!product.rows.length) {
        throw new Error("Product not found");
      }

      const availableQty = product.rows[0].stock_unit;

      const cartCheckSql = "SELECT * FROM cart WHERE user_id = $1";
      const existingCart = await writeQuery(cartCheckSql, [userId]);

      if (!existingCart.rows.length) {
        const cartSql = "INSERT INTO cart (user_id) VALUES ($1) RETURNING id";
        const cartResult = await writeQuery(cartSql, [userId]);
        cartId = cartResult.rows[0].id;
      } else {
        cartId = existingCart.rows[0].id;
      }

      const existingCartItemSql =
        "SELECT item_qty FROM cart_item WHERE cart_id = $1 AND product_id = $2";
      const existingCartItem = await writeQuery(existingCartItemSql, [
        cartId,
        productId,
      ]);

      let totalQtyInCart = existingCartItem.rows.length
        ? existingCartItem.rows[0].item_qty
        : 0;

      if (totalQtyInCart + itemQty > availableQty) {
        throw new Error("Out of stock");
      }

      if (existingCartItem.rows.length) {
        const updateCartItemSql =
          "UPDATE cart_item SET item_qty = item_qty + $1 WHERE cart_id = $2 AND product_id = $3 RETURNING *";
        const result = await writeQuery(updateCartItemSql, [
          itemQty,
          cartId,
          productId,
        ]);
        return result.rows[0];
      } else {
        const cartItemSql =
          "INSERT INTO cart_item (cart_id, product_id, name, price, image_url, item_qty) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *";
        const cartItemParams = [
          cartId,
          productId,
          name,
          price,
          imageUrl,
          itemQty,
        ];
        const result = await writeQuery(cartItemSql, cartItemParams);
        return result.rows[0];
      }
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

  async CartRemove(userId: number) {
    try {
      const cartSql = "SELECT id FROM cart WHERE user_id = $1";
      const cartResult = await writeQuery(cartSql, [userId]);

      const cartId = cartResult.rows[0].id;

      const sql = "DELETE FROM cart_item WHERE cart_id = $1 RETURNING *";
      const result = await writeQuery(sql, [cartId]);
      return result.rows[0];
    } catch (error) {
      throw error;
    }
  }

  async SpecificCartRemove(userId, productId) {
    try {
        const cartSql = "SELECT id FROM cart WHERE user_id = $1";
        const cartResult = await writeQuery(cartSql, [userId]);

        const cartId = cartResult.rows[0].id;

        const sql = "DELETE FROM cart_item WHERE cart_id = $1 AND product_id = $2 RETURNING *"; 
        const result = await writeQuery(sql, [cartId, productId]);
        return result.rows[0];
    } catch (error) {
        throw error;
    }
}


  async CartClear() {}
}
