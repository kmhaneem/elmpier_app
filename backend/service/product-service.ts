import { Brand, Category, Model, Product, ProductImage } from "../database/model/product.model";
import { UserPayload } from "../database/model/user.model";
import { ProductRepository } from "../database/repository/product-repository";
import cloudinary from "../utils/cloudinary";
import fs from "fs";

export class ProductService {
  private repository: ProductRepository;
  
  constructor() {
    this.repository = new ProductRepository();
  }
  
    async CreateProduct(productInputs: Product, productUrl: ProductImage){
        try {
            const result = await this.repository.ProductCreate(productInputs, productUrl);
            console.log(result)
            return result;
        } catch (error){
            throw error
        }
    }
    async GetProducts(currentUser?: UserPayload){
      try {
        const userId = currentUser?._id;
        const result = await this.repository.ProductsGet(userId);
        console.log(userId)
        return result;
      } catch (error){
        throw error;
      }
   }
   
    async GetUserProduct(currentUser: UserPayload){
      try {
        const userId = currentUser._id;
        const result = await this.repository.UserProductGet(userId)
        return result;
      } catch (error){
        throw error
      }
    }

    async GetProductById(productId: number){
      try {
        const result = await this.repository.ProductGetById(productId)
        return result
      } catch (error) {
        throw error
      }
    }
    async UpdateProduct(productId: number, productUpdates: Product, files: Express.Multer.File[], currentUser: UserPayload){
      try {
        const imageUrls: string[] = [];
        const userId = currentUser._id;

        if (files && files.length > 0) {
          for (const file of files) {
            const { path } = file;
            const uploadedImage = await cloudinary.v2.uploader.upload(path, {
              folder: "elmpier_app",
              allowed_formats: ["jpg", "jpeg", "png"],
            });
            imageUrls.push(uploadedImage.url);
            fs.unlinkSync(path); // Delete the local image after uploading
          }
        }

        const result = await this.repository.ProductUpdate(productId, productUpdates, imageUrls, userId);
        return result
      } catch (error){
        throw error
      }
    }
    async DeleteProduct(currentUser: UserPayload, productId: number){
      try {
        const userId = currentUser._id;
        const result = await this.repository.ProductDelete(userId, productId)
        return result
      } catch (error) {
        throw error
      }
      
    }

    async CreateCategory(categoryInput: Category){
      try {
        const result = await this.repository.CategoryCreate(categoryInput)
        return result
      } catch (error){
        throw error
      }
    }

    async UpdateCategory(categoryInput: Category, id: number){
      try {
        const result = await this.repository.CategoryUpdate(categoryInput, id)
        return result
      } catch (error){
        throw error
      }
    }

    async DeleteCategory(id: number){
      try {
        const result = await this.repository.CategoryDelete(id)
        return result
      } catch(error){
        return error
      }
    }

    async GetCategories() {
      try {
          return await this.repository.CategoriesGet();
      } catch (error) {
          throw error;
      }
  }

  async CreateBrand(brandInput: Brand){
    try {
      const result = await this.repository.BrandCreate(brandInput)
      return result
    } catch (error){
      throw error
    }
  }

  async UpdateBrand(brandInput: Brand, id: number){
    try {
      const result = await this.repository.BrandUpdate(brandInput, id)
      return result
    } catch (error){
      throw error
    }
  }

  async DeleteBrand(id: number){
    try {
      const result = await this.repository.BrandDelete(id)
      return result
    } catch (error){
      throw error
    }
  }
    
    async GetBrands(){
      try {
        return await this.repository.BrandsGet();
    } catch (error) {
        throw error;
      }
    }

    async CreateModel(modelInput: Model){
      try {
        const result = await this.repository.ModelCreate(modelInput)
        return result
      } catch (error){
        throw error
      }
    }

    async UpdateModel(modelInput: Model, id: number){
      try {
        const result = await this.repository.ModelUpdate(modelInput, id)
        return result
      } catch (error){
        throw error
      }
    }

    async DeleteModel(id: number){
      try {
        const result = await this.repository.ModelDelete(id)
        return result
      } catch (error){
        throw error
      }
    }

    async GetModels(){
      try {
        return await this.repository.ModelsGet();
    } catch (error) {
        throw error;
    }
    }
}