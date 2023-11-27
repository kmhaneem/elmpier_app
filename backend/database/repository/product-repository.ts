import {
  Brand,
  Category,
  Model,
  Product,
  ProductFilter,
  ProductImage,
  ProductSearchParams,
} from "../model/product.model";
import { writeQuery } from "../pg-connection";

export class ProductRepository {
  async ProductCreate(
    userId: number,
    {
      name,
      description,
      price,
      categoryId,
      brandId,
      modelId,
      stockUnit,
      conditionId,
    }: Product,
    { imageUrl }: ProductImage
  ) {
    try {
      const sql =
        "INSERT INTO product (user_id, name, description, price, category_id, brand_id, model_id, stock_unit, condition_id) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *";
      const params = [
        userId,
        name,
        description,
        price,
        categoryId,
        brandId,
        modelId,
        stockUnit,
        categoryId,
      ];

      const result = await writeQuery(sql, params);

      const productId = result.rows[0].id;
      for (const url of imageUrl) {
        const imageSql =
          "INSERT INTO product_image (product_id, image_url) VALUES ($1, $2)";
        await writeQuery(imageSql, [productId, url]);
      }
      return result.rows[0];
    } catch (error) {
      throw error;
    }
  }

  async ProductSearch({ name }: ProductSearchParams, userId?: number) {
    try {
      const conditions = [];
      const params = [];

      if (name && name.trim() !== "") {
        const searchWords = name.split(/\s+/).filter((word) => word.length > 0);

        if (searchWords.length === 1 && searchWords[0].length === 1) {
          conditions.push(`p.name ILIKE $${params.length + 1}`);
          params.push(searchWords[0]);
        } else {
          searchWords.forEach((word) => {
            conditions.push(`p.name ILIKE $${params.length + 1}`);
            params.push(`%${word}%`);
          });
        }
      }

      if (userId) {
        conditions.push(`p.user_id != $${params.length + 1}`);
        params.push(userId);
      }

      let sql = `
        SELECT p.*, ARRAY_AGG(pi.image_url) as image_urls
        FROM product p
        LEFT JOIN product_image pi ON p.id = pi.product_id
      `;

      if (conditions.length > 0) {
        sql += ` WHERE ${conditions.join(" AND ")}`;
      }

      sql += " GROUP BY p.id";

      const result = await writeQuery(sql, params);

      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductsGet(userId?: number) {
    try {
      let sql = `
        SELECT p.*, c.name AS condition, ARRAY_AGG(pi.image_url) as image_urls
        FROM product p
        LEFT JOIN product_image pi ON p.id = pi.product_id
        LEFT JOIN condition c ON p.condition_id = c.id
        `;

      let params = [];
      if (userId) {
        sql += " WHERE p.user_id != $1 AND p.stock_unit > 0";
        params.push(userId);
      } else {
        sql +=
          " WHERE p.is_approved = true AND p.is_visible = true AND p.stock_unit > 0";
      }

      sql += " GROUP BY p.id, c.name";

      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async UserProductGet(userId: number) {
    try {
      let sql = `
        SELECT p.*, ARRAY_AGG(pi.image_url) as image_urls
        FROM product p
        LEFT JOIN product_image pi ON p.id = pi.product_id
        WHERE p.user_id = $1 AND p.is_approved = true AND p.is_visible = TRUE AND p.stock_unit > 0 
        GROUP BY p.id
      `;
      const params = [userId];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductGetById(productId: number) {
    try {
      const sql = "SELECT * FROM product WHERE id = $1";
      const params = [productId];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

 

  async ProductUpdate(
    productId: number,
    { name, description, price, stockUnit }: Product,
    imageUrls: string[],
    userId: number
  ) {
    try {
      let sql = `UPDATE product SET name = $2, description = $3, price = $4, stock_unit = $5, is_approved = false WHERE id = $1 AND user_id = $6 RETURNING *`;
      const params = [productId, name, description, price, stockUnit, userId];
      const result = await writeQuery(sql, params);

      if (result.rows.length === 0) {
        throw new Error(
          "Unauthorized: You do not have permission to update this product."
        );
      }

      if (imageUrls.length > 0) {
        sql = "DELETE FROM product_image WHERE product_id = $1";
        await writeQuery(sql, [productId]);

        for (const url of imageUrls) {
          sql =
            "INSERT INTO product_image (product_id, image_url) VALUES ($1, $2)";
          await writeQuery(sql, [productId, url]);
        }
      }
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  

  async ProductDelete(userId: number, productId: number) {
    try {
      const sql =
        "UPDATE product SET stock_unit = 0 WHERE user_id = $1 AND id = $2";
      const params = [userId, productId];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async CategoryCreate({ name }: Category) {
    try {
      const sql = "INSERT INTO category (name) VALUES ($1) RETURNING *";
      const values = [name];
      const result = await writeQuery(sql, values);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async CategoryUpdate({ name }: Category, id: number) {
    try {
      const sql = "UPDATE category SET name = $1 WHERE id = $2 RETURNING *";
      const params = [name, id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async CategoryDelete(id: number) {
    try {
      let sql = "DELETE FROM brand WHERE category_id = $1";
      let params = [id];
      await writeQuery(sql, params);
      sql = "DELETE FROM category WHERE id = $1";
      params = [id];
      await writeQuery(sql, params);
      return { success: true, message: "Catgeory deleted successfully" };
    } catch (error) {
      return error;
    }
  }

  async CategoriesGet() {
    try {
      const sql = "SELECT * FROM category";
      const result = await writeQuery(sql, []);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async BrandCreate({ name, categoryId }: Brand) {
    try {
      const sql =
        "INSERT INTO brand (name, category_id) VALUES ($1, $2) RETURNING *";
      const params = [name, categoryId];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async BrandUpdate({ name, categoryId }: Brand, id: number) {
    try {
      const sql =
        "UPDATE brand SET name = $1, category_id = $2 WHERE id = $3 RETURNING *";
      const params = [name, categoryId, id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async BrandDelete(id: number) {
    try {
      let sql = "DELETE FROM model WHERE brand_id = $1";
      let params = [id];
      await writeQuery(sql, params);
      sql = "DELETE FROM brand WHERE id = $1";
      params = [id];
      await writeQuery(sql, params);
      return { success: true, message: "Brand deleted successfully" };
    } catch (error) {
      throw error;
    }
  }

  async BrandsGet() {
    try {
      const sql = "SELECT * FROM brand";
      const result = await writeQuery(sql, []);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ModelCreate({ name, brandId }: Model) {
    try {
      const sql =
        "INSERT INTO model (name, brand_id) VALUES ($1, $2) RETURNING *";
      const params = [name, brandId];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ModelUpdate({ name, brandId }: Model, id: number) {
    try {
      const sql =
        "UPDATE model SET name = $1, brand_id = $2 WHERE id = $3 RETURNING *";
      const params = [name, brandId, id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ModelDelete(id: number) {
    try {
      const sql = "DELETE FROM model WHERE id = $1";
      const params = [id];
      await writeQuery(sql, params);
      return { success: true, message: "Model deleted successfully" };
    } catch (error) {
      throw error;
    }
  }

  async ModelsGet() {
    try {
      const sql = "SELECT * FROM model";
      const result = await writeQuery(sql, []);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductConditonsGet() {
    try {
      const sql = "SELECT * FROM condition";
      const result = await writeQuery(sql, []);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async getCountOfProductsByUser(userId: number): Promise<number> {
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

  async ProductFilter({ categoryId, brandId, modelId }: ProductFilter) {
    try {
      let sql =
        "SELECT * FROM product WHERE is_visible = true AND is_approved = true";
      let params = [];
      let paramCounter = 1;

      if (categoryId) {
        sql += ` AND category_id = $${paramCounter}`;
        params.push(categoryId);
        paramCounter++;
      }

      if (brandId) {
        sql += ` AND brand_id = $${paramCounter}`;
        params.push(brandId);
        paramCounter++;
      }

      if (modelId) {
        sql += ` AND model_id = $${paramCounter}`;
        params.push(modelId);
        paramCounter++;
      }

      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProductSoldGet(id: number) {
    try {
     
      const sql = `SELECT 
      order_item.product_id, 
      product.name, 
      product.price, 
      MIN(product_image.image_url) AS image_url,
      SUM(order_item.item_qty)::int AS total_qty
  FROM 
      order_item 
  JOIN 
      product ON order_item.product_id = product.id
  LEFT JOIN 
      product_image ON product.id = product_image.product_id
  WHERE 
      product.user_id = $1
  GROUP BY 
      order_item.product_id, product.name, product.price;  
  `;

      const params = [id];
      const result = await writeQuery(sql, params);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }
}
