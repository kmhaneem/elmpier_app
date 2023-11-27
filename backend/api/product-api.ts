import { Application, Request, Response, NextFunction } from "express";
import { validationMiddleware } from "./middleware/validate-middleware";
import {
  Brand,
  Category,
  Model,
  Product,
  ProductFilter,
  ProductImage,
  ProductSearchParams,
} from "../database/model/product.model";
import { BadRequestError } from "../utils/app-errors";
import { ProductService } from "../service/product-service";
import { productUpload } from "./middleware/upload";
import cloudinary from "../utils/cloudinary";
import fs from "fs";
import { UserPayload } from "../database/model/user.model";
import { Authenticate, OptionalAuthenticate } from "./middleware/common-auth";
import { AdminPayload } from "../database/model/admin.model";

export default (app: Application) => {
  const productService = new ProductService();

  app.get(
    "/products",
    Authenticate,
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: UserPayload = req.user
        const response = await productService.GetProducts(payload);
        return res.status(200).json({ response });
      } catch (error) {
        console.log(error)
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/product/category",
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await productService.GetCategories();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/product/brand",
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await productService.GetBrands();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/product/model",
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await productService.GetModels();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/product/search",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const productName = req.query.query as string;
        const searchParams: ProductSearchParams = {
          name: productName,
        };
        const userId = req.body.userId;

        const products = await productService.SearchProducts(
          searchParams,
          userId
        );

        return res.status(200).json(products);
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.post(
    "/product/create",
    Authenticate,
    productUpload,
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const imageUrlPayload: ProductImage = {
          imageUrl: [],
        };

       
        for (const file of req.files as Express.Multer.File[]) {
          const { path } = file;

          try {
            const uploadedImage = await cloudinary.v2.uploader.upload(path, {
              folder: "elmpier_app",
              allowed_formats: ["jpg", "jpeg", "png", "webp"],
            });
            imageUrlPayload.imageUrl.push(uploadedImage.url);

            fs.unlink(path, (err) => {
              if (err) {
                console.error(`Error deleting file ${path}:`, err);
              }
            });
          } catch (error) {}
        }

        const payload: Product = req.body;
        const userData: UserPayload = req.user;
        const response = await productService.CreateProduct(
          payload,
          userData,
          imageUrlPayload
        );
        return res.status(201).json({ response });
      } catch (error) {
        if (error.message === "Limit Exceeded Error") {
          return res
            .status(403)
            .json(new BadRequestError(error.message, error));
        }
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/user/products",
    Authenticate,
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const response = await productService.GetUserProduct(currentUser);
        console.log("SELLER PRODUCT CALLED");
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/products/product/:id",
    Authenticate,
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const productId = Number(req.params.id);
        const response = await productService.GetProductById(productId);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/products/product/:id",
    Authenticate,
    productUpload,
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const productId = Number(req.params.id);
        const payload: Product = req.body;
        const response = await productService.UpdateProduct(
          productId,
          payload,
          req.files as Express.Multer.File[],
          currentUser
        );
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.delete(
    "/products/product/:id",
    Authenticate,
    validationMiddleware(Product),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const productId = Number(req.params.id);
        const response = await productService.DeleteProduct(
          currentUser,
          productId
        );
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.post(
    "/product/category/create",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: Category = req.body;
        const response = await productService.CreateCategory(payload);
        return res.status(201).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/product/category/:id",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: Category = req.body;
        const id = Number(req.params.id);
        const response = await productService.UpdateCategory(payload, id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.delete(
    "/product/category/:id",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = Number(req.params.id);
        const response = await productService.DeleteCategory(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.post(
    "/product/brand/create",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: Brand = req.body;
        const response = await productService.CreateBrand(payload);
        return res.status(201).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/product/brand/:id",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: Brand = req.body;
        const id = Number(req.params.id);
        const response = await productService.UpdateBrand(payload, id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.delete(
    "/product/brand/:id",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = Number(req.params.id);
        const response = await productService.DeleteBrand(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.post(
    "/product/model/create",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: Model = req.body;
        const response = await productService.CreateModel(payload);
        return res.status(201).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.delete(
    "/product/model/:id",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = Number(req.params.id);
        const response = await productService.DeleteModel(id);
        return res.status(201).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/product/model/:id",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: Model = req.body;
        const id = Number(req.params.id);
        const response = await productService.UpdateModel(payload, id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/product/filter",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const { categoryId, brandId, modelId } = req.body;
        const payload: ProductFilter = {
          categoryId: categoryId,
          brandId: brandId,
          modelId: modelId,
        };
        const response = await productService.FilterProducts(payload);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/product/sold",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: UserPayload = req.user;
        console.log("PAYload", payload);
        const response = await productService.GetSoldProducts(payload);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );
  app.get(
    "/product/conditions",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await productService.GetProductConditons();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );
};
