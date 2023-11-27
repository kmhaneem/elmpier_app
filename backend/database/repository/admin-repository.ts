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

  async ProductsToReviewUpdate(id: number){
    try {
        const sql = "UPDATE product SET is_approved = true WHERE id = $1"
        const params = [id]
        const result = await writeQuery(sql, params)
        return result.rows
    } catch (error){
        throw error
    }
  }

  async ProductDecline(id: number){
    try {
        const productImageSql = "DELETE FROM product_image WHERE product_id = $1"
        await writeQuery(productImageSql, [id])

        const sql = "DELETE FROM product WHERE id = $1"
        const params = [id]
        const result = await writeQuery(sql, params)
        return result.rows
    } catch (error){
        throw error
    }
  }

  async ProductVisible(id: number){
    try {
      const sql = "UPDATE product SET is_visible = false WHERE id = $1"
      const params = [id]
      const result = await writeQuery(sql, params)
      return result.rows
    }catch (error){
      throw error
    }
  }
}
