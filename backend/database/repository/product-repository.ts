import { Brand, Category, Model, Product, ProductImage } from "../model/product.model";
import { writeQuery } from "../pg-connection";

export class ProductRepository {
    async ProductCreate({userId, name, description, price, categoryId, brandId, modelId, stockUnit}: Product, {imageUrl}: ProductImage){
        try {
            const sql = "INSERT INTO product (user_id, name, description, price, category_id, brand_id, model_id, stock_unit) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *";
            const params = [userId, name, description, price, categoryId, brandId, modelId, stockUnit];
            const result = await writeQuery(sql, params);

            const productId = result.rows[0].id;
            for(const url of imageUrl){
                const imageSql = "INSERT INTO product_image (product_id, image_url) VALUES ($1, $2)";
                await writeQuery(imageSql, [productId, url])
            }
            return result.rows[0];
        } catch (error) {
            throw error;
        }
    }

    async ProductsGet(userId?: number){
        try {
            let sql = "SELECT * FROM product"
            let params = []
            if(userId){
                sql += " WHERE user_id != $1"
                params.push(userId)
            }
            const result = await writeQuery(sql, params);
            return result.rows
        } catch (error) {
            throw error
        }
    }

    async UserProductGet(userId: number){
        try {
            const sql = "SELECT * FROM product WHERE user_id = $1"
            const params = [userId]
            const result = await writeQuery(sql, params)
            return result.rows
        } catch (error){
            throw error
        }
    }

    async ProductGetById(productId: number){
        try {
            const sql = "SELECT * FROM product WHERE id = $1"
            const params = [productId]
            const result = await writeQuery(sql, params)
            return result.rows
        } catch (error){
            throw error
        }
    }
    async ProductUpdate(productId: number, {name, description, price, categoryId, brandId, modelId, stockUnit}: Product, imageUrls: string[], userId: number){
        try {
            let sql = `UPDATE product SET name = $2, description = $3, price = $4, category_id = $5, brand_id = $6, model_id = $7, stock_unit = $8 WHERE id = $1 AND user_id = $9 RETURNING *`;
            const params = [productId, name, description, price, categoryId, brandId, modelId, stockUnit, userId];
            const result = await writeQuery(sql, params);

            if (result.rows.length === 0) {
                throw new Error("Unauthorized: You do not have permission to update this product.");
            }

            if(imageUrls.length > 0){
                sql = "DELETE FROM product_image WHERE product_id = $1";
                await writeQuery(sql, [productId]);

                for (const url of imageUrls) {
                    sql = "INSERT INTO product_image (product_id, image_url) VALUES ($1, $2)";
                    await writeQuery(sql, [productId, url]);
                }
            }
            return result.rows

        } catch (error){
            throw error
        }
    }
    async ProductDelete(userId: number, productId: number){
        try {
            let sql = "DELETE FROM product_image WHERE product_id = $1";
            await writeQuery(sql, [productId]);
    
            sql = "DELETE FROM product WHERE id = $2 AND user_id = $1";
            const params = [userId, productId];
            const result = await writeQuery(sql, params);
            
            if (result.rowCount === 0) {
                throw new Error("No product found");
            }
            
            return { success: true, message: 'Product deleted successfully' };
        } catch (error){
            throw error;
        }
    }
    
    async CategoryCreate({name}: Category){
        try {
            const sql = "INSERT INTO category (name) VALUES ($1) RETURNING *"
            const values = [name]
            const result = await writeQuery(sql, values)
            return result.rows
        } catch (error){
            throw error
        }
    }

    async CategoryUpdate({name}: Category, id: number){
        try {
            const sql = "UPDATE category SET name = $1 WHERE id = $2 RETURNING *"
            const params = [name, id]
            const result = await writeQuery(sql, params)
            return result.rows
        } catch (error){
            throw error
        }
    }

    async CategoryDelete(id: number){
        try {
            let sql = "DELETE FROM brand WHERE category_id = $1"
            let params = [id]
            await writeQuery(sql, params)
            sql = "DELETE FROM category WHERE id = $1"
            params = [id]
            await writeQuery(sql, params)
            return { success: true, message: 'Catgeory deleted successfully' };
        } catch (error){
            return error
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

    async BrandCreate({name, categoryId}: Brand){
        try {
            const sql = "INSERT INTO brand (name, category_id) VALUES ($1, $2) RETURNING *"
            const params = [name, categoryId]
            const result = await writeQuery(sql, params)
            return result.rows
        } catch (error){
            throw error
        }
    }

    async BrandUpdate({name, categoryId}: Brand, id: number){
        try {
            const sql = "UPDATE brand SET name = $1, category_id = $2 WHERE id = $3 RETURNING *"
            const params = [name, categoryId, id]
            const result = await writeQuery(sql, params)
            return result.rows
        } catch (error){
            throw error
        }
    }

    async BrandDelete(id: number){
        try {
            let sql = "DELETE FROM model WHERE brand_id = $1"
            let params = [id]
            await writeQuery(sql, params)
            sql = "DELETE FROM brand WHERE id = $1"
            params = [id]
            await writeQuery(sql, params)
            return { success: true, message: 'Brand deleted successfully' };
        } catch (error){
            throw error
        }
    }

    async BrandsGet(){
        try {
            const sql = "SELECT * FROM brand";
            const result = await writeQuery(sql, []);
            return result.rows;
        } catch (error) {
            throw error;
        }
    }

    async ModelCreate({name, brandId}: Model){
        try {
            const sql = "INSERT INTO model (name, brand_id) VALUES ($1, $2) RETURNING *";
            const params = [name, brandId]
            const result = await writeQuery(sql, params)
            return result.rows
        } catch (error) {
            throw error
        }
    }

    async ModelUpdate({name, brandId}: Model, id: number){
        try {
            const sql = "UPDATE model SET name = $1, brand_id = $2 WHERE id = $3 RETURNING *"
            const params = [name, brandId, id]
            const result = await writeQuery(sql, params)
            return result.rows
        } catch(error){
            throw error
        }
    }

    async ModelDelete(id: number){
        try {
            const sql = "DELETE FROM model WHERE id = $1"
            const params = [id]
            await writeQuery(sql, params)
            return { success: true, message: 'Model deleted successfully' };
        } catch (error){
            throw error
        }
    }

    async ModelsGet(){
        try {
            const sql = "SELECT * FROM model";
            const result = await writeQuery(sql, []);
            return result.rows;
        } catch (error) {
            throw error;
        }
    }
}