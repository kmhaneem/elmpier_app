import { DeliveryPerson } from "../model/deliveryp.model";
import { writeQuery } from "../pg-connection";

export class DeliveryPersonRepository {
  async AccountCreate({
    name,
    email,
    password,
    salt,
    province,
    district,
  }: DeliveryPerson) {
    try {
      const sql =
        "INSERT INTO delivery_person (name, email, password, salt, province_id, district_id) VALUES ($1, $2, $3, $4, $5, $6) RETURNING id";
      const params = [name, email, password, salt, province, district];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async AccountLogin({ email }: DeliveryPerson) {
    try {
      const sql = "SELECT * FROM delivery_person WHERE email = $1";
      const params = [email];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async OrderItemGetByDistrict(id: number) {
    try {
      const dPersonSql =
        "SELECT district_id FROM delivery_person WHERE id = $1";
      const dPersonParams = [id];
      const dPersonResult = await writeQuery(dPersonSql, dPersonParams);
      const districtId = dPersonResult.rows[0].district_id;
      const sql = `
            SELECT oi.*
            FROM order_item oi
            INNER JOIN product p ON oi.product_id = p.id
            INNER JOIN users u ON p.user_id = u.id
            INNER JOIN user_address ua ON u.id = ua.user_id
            WHERE ua.district_id = $1 AND oi.is_pickup = false AND oi.is_rejected = false
        `;
      const params = [districtId];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async OrderedProductGet(id: number) {
    try {
      let sql = `
      SELECT p.*, c.name AS condition, ARRAY_AGG(pi.image_url) as image_urls
      FROM product p
      LEFT JOIN product_image pi ON p.id = pi.product_id
      LEFT JOIN condition c ON p.condition_id = c.id
      WHERE p.id = $1 
      GROUP BY p.id, c.name;      
        `;
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductReject(productId: number, reason: string) {
    try {
      const sq = "UPDATE order_item SET is_rejected = true WHERE id = $1";
      await writeQuery(sq, [productId]);
      const sql =
        "INSERT INTO reject_product (product_id, reason) VALUES ($1, $2) RETURNING *";
      const params = [productId, reason];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async PickUpConfirm(id: number) {
    try {
      const sql = "UPDATE order_item SET is_pickup = true, is_warehouse = true  WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async DeliveryProductGet(id: number) {
    try {
      const dPersonSql =
        "SELECT district_id FROM delivery_person WHERE id = $1";
      const dPersonParams = [id];
      const dPersonResult = await writeQuery(dPersonSql, dPersonParams);
      const districtId = dPersonResult.rows[0].district_id;
      console.log("District ID", districtId);
      const sql = `
      SELECT oi.*, o.user_id
      FROM order_item oi
      INNER JOIN product p ON oi.product_id = p.id
      INNER JOIN orders o ON oi.order_id = o.id
      INNER JOIN users u ON o.user_id = u.id
      INNER JOIN user_address ua ON u.id = ua.user_id
      WHERE ua.district_id = $1 AND oi.is_warehouse = true AND oi.is_delivered = false
      
        `;
      const params = [districtId];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductDelivery(id: number) {
    try {
      const sql = "UPDATE order_item SET is_delivered = true WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

 

  async ProfileGet(id: number) {
    try {
      const sql = `
        SELECT dp.*, p.name as province, d.name as district
        FROM delivery_person dp
        LEFT JOIN province p ON dp.province_id = p.id
        LEFT JOIN district d ON dp.district_id = d.id
        WHERE dp.id = $1
      `;
      const params = [id];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async PickedItemsGet(){
    try {
      const sql = 'SELECT * FROM order_item WHERE is_pickup = true'
      const result = await writeQuery(sql, [])
      return result.rows
    } catch (error){
      throw error
    }
  }

  async RejectItemsGet(){
    try {
      const sql = 'SELECT * FROM order_item WHERE is_rejected = true'
      const result = await writeQuery(sql, [])
      return result.rows
    } catch (error){
      throw error
    }
  }
}
