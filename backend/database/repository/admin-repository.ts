import { Admin } from "../model/admin.model";
import { writeQuery } from "../pg-connection";

export class AdminRepository {
  async AdminCreate({ name, email, password, salt }: Admin) {
    try {
      const sql =
        "INSERT INTO admin (name, email, password, salt) VALUES ($1, $2, $3, $4)";
      const params = [name, email, password, salt];
      const result = await writeQuery(sql, params);
      return result.rowCount;
    } catch (error) {
      throw error;
    }
  }

  async AdminLogin({ email }: Admin) {
    try {
      const sql = "SELECT * FROM admin WHERE email = $1";
      const params = [email];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async UsersGet() {
    try {
      const sql = `SELECT 
            u.firstname,
            u.lastname,
            u.email,
            u.phone,
            a.address_line_1,
            a.address_line_2,
            a.city,
            a.postal_code,
            a.district,
            a.province
        FROM users u
        JOIN user_address a ON u.id = a.user_id`;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async TransactionGet() {
    try {
      const sql = "SELECT * FROM transaction";
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductsToReviewGet() {
    try {
      let sql = `
        SELECT p.*, ARRAY_AGG(pi.image_url) as image_urls
        FROM product p
        LEFT JOIN product_image pi ON p.id = pi.product_id WHERE p.is_approved = false GROUP BY p.id
        `;

      let params = [];

      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductsToReviewUpdate(id: number) {
    try {
      const sql = "UPDATE product SET is_approved = true WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductDecline(id: number) {
    try {
      const productImageSql = "DELETE FROM product_image WHERE product_id = $1";
      await writeQuery(productImageSql, [id]);

      const sql = "DELETE FROM product WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductVisible(id: number) {
    try {
      const sql = "UPDATE product SET is_visible = false WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AllOrdersGet() {
    try {
      const sql = "SELECT * FROM orders";
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async OrderItemByIdGet(id: string) {
    try {
      const sql = "SELECT * FROM order_item WHERE order_id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AllProductsGet() {
    try {
      const sql = `
            SELECT 
                p.*, 
                ARRAY_AGG(pi.image_url) AS image_urls
            FROM product p
            LEFT JOIN product_image pi ON p.id = pi.product_id
            GROUP BY p.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ApprovedProductsGet() {
    try {
      const sql = `
            SELECT 
                p.*, 
                ARRAY_AGG(pi.image_url) AS image_urls
            FROM product p
            LEFT JOIN product_image pi ON p.id = pi.product_id
            WHERE is_approved = true
            GROUP BY p.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async PendingProductsGet() {
    try {
      const sql = `
            SELECT 
                p.*, 
                ARRAY_AGG(pi.image_url) AS image_urls
            FROM product p
            LEFT JOIN product_image pi ON p.id = pi.product_id
            WHERE is_approved = false
            GROUP BY p.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async RejectedProductsGet() {
    try {
      const sql = `
            SELECT 
                p.*, 
                ARRAY_AGG(pi.image_url) AS image_urls
            FROM product p
            LEFT JOIN product_image pi ON p.id = pi.product_id
            WHERE is_rejected = true
            GROUP BY p.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AllAdvertisementsGet() {
    try {
      const sql = `
      SELECT 
          a.*, 
          ARRAY_AGG(ai.image_url) AS image_urls
      FROM advertisement a
      LEFT JOIN advertisement_image ai ON a.id = ai.advertisement_id
      GROUP BY a.id
  `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ApprovedAdvertisementsGet() {
    try {
      const sql = `
      SELECT 
          a.*, 
          ARRAY_AGG(ai.image_url) AS image_urls
      FROM advertisement a
      LEFT JOIN advertisement_image ai ON a.id = ai.advertisement_id
      WHERE is_approved = true
      GROUP BY a.id
  `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async PendingAdvertisementsGet() {
    try {
      const sql = `
      SELECT 
          a.*, 
          ARRAY_AGG(ai.image_url) AS image_urls
      FROM advertisement a
      LEFT JOIN advertisement_image ai ON a.id = ai.advertisement_id
      WHERE is_approved = false
      GROUP BY a.id
  `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async RejectedAdvertisementsGet() {
    try {
      const sql = `
      SELECT 
          a.*, 
          ARRAY_AGG(ai.image_url) AS image_urls
      FROM advertisement a
      LEFT JOIN advertisement_image ai ON a.id = ai.advertisement_id
      WHERE is_rejected = true
      GROUP BY a.id
  `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductOrdersGet() {
    try {
      const sql = `
            SELECT 
                o.*, 
                os.status_name, 
                CONCAT(u.firstname, ' ', u.lastname) AS username
            FROM orders o
            JOIN order_status os ON o.status_id = os.id
            JOIN users u ON o.user_id = u.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AdsOrdersGet() {
    try {
      const sql = `
            SELECT 
                o.*, 
                os.status_name, 
                CONCAT(u.firstname, ' ', u.lastname) AS username
            FROM ads_orders o
            JOIN order_status os ON o.status_id = os.id
            JOIN users u ON o.user_id = u.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async TransactionsGet() {
    try {
      const sql = `
            SELECT 
                t.*, 
                CONCAT(u.firstname, ' ', u.lastname) AS username
            FROM transaction t
            JOIN users u ON t.user_id = u.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AllUsersGet() {
    try {
      const sql = "SELECT * FROM users";
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async NormalUsersGet() {
    try {
      const sql = "SELECT * FROM users WHERE is_plus_user = false";
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async PlusUsersGet() {
    try {
      const sql = "SELECT * FROM users WHERE is_plus_user = true";
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async DeliveryUsersGet() {
    try {
      const sql = `
            SELECT 
                dp.*, 
                p.name AS province_name, 
                d.name AS district_name
            FROM delivery_person dp
            JOIN province p ON dp.province_id = p.id
            JOIN district d ON dp.district_id = d.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async RejectProductsReviewGet() {
    try {
      const sql = `
            SELECT 
                rp.*, 
                p.name AS productname
            FROM reject_product rp
            JOIN product p ON rp.product_id = p.id
        `;
      const params = [];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async UsernameGet(id: number) {
    try {
      const sql = "SELECT firstname, lastname FROM users WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async OrderStatusGet(id: number) {
    try {
      const sql = "SELECT * FROM order_status WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductApprove(id: number) {
    try {
      const sql = "UPDATE product SET is_approved = true WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductReject(id: number) {
    try {
      const sql = "UPDATE product SET is_rejected = true WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AdvertisementApprove(id: number) {
    try {
      const sql = "UPDATE advertisement SET is_approved = true WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async AdvertisementReject(id: number) {
    try {
      const sql = "UPDATE advertisement SET is_rejected = true WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }
}
