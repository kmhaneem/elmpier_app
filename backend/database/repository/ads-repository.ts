import { Order } from "../model/order.model";
import { Transaction } from "../model/transaction.model";
import { writeQuery } from "../pg-connection";

export class AdsRepository {
  async TopAdsCreate(
    productId: number,
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

      const adsOrderSql =
        "INSERT INTO ads_orders (user_id, status_id, amount, transaction_id) VALUES ($1, $2, $3, $4) RETURNING id";
      const adsOrderParams = [userId, orderStatus, amount, transactionId];

      await writeQuery(adsOrderSql, adsOrderParams);

      const sql = "UPDATE product SET is_top_ads = true WHERE id = $1";
      const result = await writeQuery(sql, [productId]);

      setTimeout(() => {
        this.resetTopAds(productId);
      }, 100000);
      //   86400000

      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async PopAdsCreate(
    productId: number,
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

      const adsOrderSql =
        "INSERT INTO ads_orders (user_id, status_id, amount, transaction_id) VALUES ($1, $2, $3, $4) RETURNING id";
      const adsOrderParams = [userId, orderStatus, amount, transactionId];

      await writeQuery(adsOrderSql, adsOrderParams);

      const sql = "UPDATE product SET is_pop_ads = true WHERE id = $1";
      const result = await writeQuery(sql, [productId]);

      setTimeout(() => {
        this.resetPopAds(productId);
      }, 100000);
      //   86400000

      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async PopAdsGet() {
    try {
      const sql = `
            SELECT p.*, ARRAY_AGG(pi.image_url) as image_urls
            FROM product p
            LEFT JOIN product_image pi ON p.id = pi.product_id
            WHERE p.is_pop_ads = true
            GROUP BY p.id
            ORDER BY RANDOM()
            LIMIT 1;
        `;

      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AdvertisementTopAdsCreate(advertisementId: number) {
    try {
      const sql = "UPDATE advertisement SET is_top_ads = true WHERE id = $1";
      const result = await writeQuery(sql, [advertisementId]);

      setTimeout(() => {
        this.resetAdvertisementTopAds(advertisementId);
      }, 5000); 

      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async resetTopAds(productId: number) {
    try {
      const sql = "UPDATE product SET is_top_ads = false WHERE id = $1";
      await writeQuery(sql, [productId]);
    } catch (error) {
      console.error(
        "Error resetting top ads for product ID",
        productId,
        ":",
        error
      );
    }
  }

  async resetPopAds(productId: number) {
    try {
      const sql = "UPDATE product SET is_pop_ads = false WHERE id = $1";
      await writeQuery(sql, [productId]);
    } catch (error) {
      console.error(
        "Error resetting top ads for product ID",
        productId,
        ":",
        error
      );
    }
  }

  async resetAdvertisementTopAds(advertisementId: number) {
    try {
      const sql = "UPDATE advertisement SET is_top_ads = false WHERE id = $1";
      await writeQuery(sql, [advertisementId]);
    } catch (error) {
      console.error(
        "Error resetting top ads for advertisement ID",
        advertisementId,
        ":",
        error
      );
    }
  }
}
