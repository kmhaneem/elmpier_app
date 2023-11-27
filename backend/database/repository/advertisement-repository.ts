import { Advertisement, AdvertisementImage } from "../model/advertisement";
import { writeQuery } from "../pg-connection";

export class AdvertisementRepository {
  async AdvertisementCreate(
    userId: number,
    {
      name,
      description,
      price,
      categoryId,
      brandId,
      modelId,
      provinceId,
      districtId,
      conditionId,
    }: Advertisement,
    { imageUrl }: AdvertisementImage
  ) {
    try {
      const sql =
        "INSERT INTO advertisement (user_id, name, description, price, condition_id, category_id, brand_id, model_id, province_id, district_id) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10) RETURNING *";
      const params = [
        userId,
        name,
        description,
        price,
        conditionId,
        categoryId,
        brandId,
        modelId,
        provinceId,
        districtId,
      ];
      const result = await writeQuery(sql, params);

      const advertisementId = result.rows[0].id;

      for (const url of imageUrl) {
        const imageSql =
          "INSERT INTO advertisement_image (advertisement_id, image_url) VALUES ($1, $2)";
        await writeQuery(imageSql, [advertisementId, url]);
      }

      return result.rows[0];
    } catch (error) {
      throw error;
    }
  }

  async AdvertisementGet(userId?: number) {
    try {
      let sql = `
            SELECT 
                a.*, 
                TO_CHAR(a.created_at, 'DD Mon YYYY HH12:MIAM') as create_date,  
                ARRAY_AGG(ai.image_url) as image_urls,
                p.name as province, 
                d.name as district,
                c.name as category,
                br.name as brand,
                mo.name as model,
                con.name as condition,
                u.phone as phone,
                u.firstname || ' ' || u.lastname as advertiser_name
            FROM advertisement a 
            LEFT JOIN advertisement_image ai ON a.id = ai.advertisement_id
            LEFT JOIN province p ON a.province_id = p.id
            LEFT JOIN district d ON a.district_id = d.id
            LEFT JOIN category c ON a.category_id = c.id
            LEFT JOIN brand br ON a.brand_id = br.id
            LEFT JOIN model mo ON a.brand_id = mo.id
            LEFT JOIN condition con ON a.condition_id = con.id
            LEFT JOIN users u ON a.user_id = u.id
        `;

      let params = [];
      if (userId) {
        sql += " WHERE a.user_id != $1";
        params.push(userId);
      }

      sql +=
        " GROUP BY a.id, p.name, d.name, c.name, br.name, mo.name, con.name, u.phone, u.firstname, u.lastname, a.created_at"; // Added a.created_at here

      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async getCountOfAdvertisementsByUser(userId: number): Promise<number> {
    try {
      const countProductSql = "SELECT COUNT(*) FROM product WHERE user_id = $1";
      const countResult = await writeQuery(countProductSql, [userId]);

      return parseInt(countResult.rows[0].count);
    } catch (error) {
      throw error;
    }
  }

  async checkIsPlusUser(userId: number): Promise<boolean> {
    try {
      const userSql = "SELECT is_plus_user FROM users WHERE id = $1";
      const userResult = await writeQuery(userSql, [userId]);

      return userResult.rows[0].is_plus_user;
    } catch (error) {
      throw error;
    }
  }

  async AdvertisementSearch(name: string, userId?: number) {
    try {
      const conditions = [];
      const params = [];

      if (name && name.trim() !== "") {
        const searchWords = name.split(/\s+/).filter((word) => word.length > 0);

        if (searchWords.length === 1 && searchWords[0].length === 1) {
          conditions.push(`a.name ILIKE $${params.length + 1}`);
          params.push(searchWords[0]);
        } else {
          searchWords.forEach((word) => {
            conditions.push(`a.name ILIKE $${params.length + 1}`);
            params.push(`%${word}%`);
          });
        }
      }

      if (userId) {
        conditions.push(`a.user_id != $${params.length + 1}`);
        params.push(userId);
      }

      let sql = `
        SELECT a.*, ARRAY_AGG(ai.image_url) as image_urls
        FROM advertisement a
        LEFT JOIN advertisement_image ai ON a.id = ai.advertisement_id
      `;

      if (conditions.length > 0) {
        sql += ` WHERE ${conditions.join(" AND ")}`;
      }

      sql += " GROUP BY a.id";

      const result = await writeQuery(sql, params);

      return result.rows;
    } catch (error) {
      throw error;
    }
  }
}
