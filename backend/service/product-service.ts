import {
  Brand,
  Category,
  Model,
  Product,
  ProductFilter,
  ProductImage,
  ProductSearchParams,
} from "../database/model/product.model";
import { UserPayload } from "../database/model/user.model";
import { ProductRepository } from "../database/repository/product-repository";
import cloudinary from "../utils/cloudinary";
import fs from "fs";

export class ProductService {
  private repository: ProductRepository;

  constructor() {
    this.repository = new ProductRepository();
  }

  async CreateProduct(productInputs: Product, userData: UserPayload, productUrl: ProductImage) {
    try {
      const userId = userData._id;
      const totalCount = await this.repository.getCountOfProductsByUser(userId);
      
      const isPlusUser = await this.repository.checkIsPlusUser(userId);

      if (totalCount > 2 && !isPlusUser) {
        throw new Error("Limit Exceeded Error");
      }
      const result = await this.repository.ProductCreate(
        userId,
        productInputs,
        productUrl
      );
      console.log(result);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async SearchProducts(searchParams: ProductSearchParams, userId?: number) {
    try {
      const result = await this.repository.ProductSearch(searchParams, userId);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async GetProducts(payload: UserPayload) {
    try {
      const id = payload._id
      const result = await this.repository.ProductsGet(id);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async GetUserProduct(currentUser: UserPayload) {
    try {
      const userId = currentUser._id;
      const result = await this.repository.UserProductGet(userId);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async GetProductById(productId: number) {
    try {
      const result = await this.repository.ProductGetById(productId);
      return result;
    } catch (error) {
      throw error;
    }
  }
  async UpdateProduct(
    productId: number,
    productUpdates: Product,
    files: Express.Multer.File[],
    currentUser: UserPayload
  ) {
    try {
      const imageUrls: string[] = [];
      const userId = currentUser._id;

      if (files && files.length > 0) {
        for (const file of files) {
          const { path } = file;
          const uploadedImage = await cloudinary.v2.uploader.upload(path, {
            folder: "elmpier_app",
            allowed_formats: ["jpg", "jpeg", "png", "webp"],
          });
          imageUrls.push(uploadedImage.url);
          fs.unlinkSync(path); 
        }
      }

      const result = await this.repository.ProductUpdate(
        productId,
        productUpdates,
        imageUrls,
        userId
      );
      return result;
    } catch (error) {
      throw error;
    }
  }

  async DeleteProduct(currentUser: UserPayload, productId: number) {
    try {
      const userId = currentUser._id;
      const result = await this.repository.ProductDelete(userId, productId);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async CreateCategory(categoryInput: Category) {
    try {
      const result = await this.repository.CategoryCreate(categoryInput);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async UpdateCategory(categoryInput: Category, id: number) {
    try {
      const result = await this.repository.CategoryUpdate(categoryInput, id);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async DeleteCategory(id: number) {
    try {
      const result = await this.repository.CategoryDelete(id);
      return result;
    } catch (error) {
      return error;
    }
  }

  async GetCategories() {
    try {
      return await this.repository.CategoriesGet();
    } catch (error) {
      throw error;
    }
  }

  async CreateBrand(brandInput: Brand) {
    try {
      const result = await this.repository.BrandCreate(brandInput);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async UpdateBrand(brandInput: Brand, id: number) {
    try {
      const result = await this.repository.BrandUpdate(brandInput, id);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async DeleteBrand(id: number) {
    try {
      const result = await this.repository.BrandDelete(id);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async GetBrands() {
    try {
      return await this.repository.BrandsGet();
    } catch (error) {
      throw error;
    }
  }

  async CreateModel(modelInput: Model) {
    try {
      const result = await this.repository.ModelCreate(modelInput);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async UpdateModel(modelInput: Model, id: number) {
    try {
      const result = await this.repository.ModelUpdate(modelInput, id);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async DeleteModel(id: number) {
    try {
      const result = await this.repository.ModelDelete(id);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async GetModels() {
    try {
      return await this.repository.ModelsGet();
    } catch (error) {
      throw error;
    }
  }

  async GetProductConditons() {
    try {
      return await this.repository.ProductConditonsGet();
    } catch (error) {
      throw error;
    }
  }

  async FilterProducts(productFilter: ProductFilter){
    try {
      const response = await this.repository.ProductFilter(productFilter)
      return response
    } catch (error) {
      throw error
    }
  }

  async GetSoldProducts(payload: UserPayload){
    try {
      const id = payload._id;
      const response = await this.repository.ProductSoldGet(id)
      return response
    } catch (error){
      throw error
    }
  }

}
