import { Application, Request, Response, NextFunction } from "express"
import { validationMiddleware } from "./middleware/validate-middleware"
import { Brand, Category, Model, Product, ProductImage } from "../database/model/product.model"
import { BadRequestError } from "../utils/app-errors"
import { ProductService } from "../service/product-service"
import { productUpload } from "./middleware/upload"
import cloudinary from "../utils/cloudinary";
import fs from "fs";
import { UserPayload } from "../database/model/user.model"
import { Authenticate, OptionalAuthenticate } from "./middleware/common-auth"
import { AdminPayload } from "../database/model/admin.model"


export default (app: Application) => {
    const productService = new ProductService();

    app.get("/products", validationMiddleware(Product), OptionalAuthenticate,  async(req: Request, res: Response, next: NextFunction) => {
        try {
            const currentUser: UserPayload = req.user;
            
            const response = await productService.GetProducts(currentUser);
            return res.status(200).json({ response });
        } catch (error) {
            
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    });

    app.use(Authenticate)
    app.post("/product/create", productUpload, validationMiddleware(Product),  async(req: Request, res: Response, next: NextFunction) =>{
        try {
            const payload: Product = req.body;
            console.log(req.body)
            const imageUrlPayload: ProductImage = {
                imageUrl: []
            };

        for (const file of req.files as Express.Multer.File[]) {
          const { path } = file;

          const uploadedImage = await cloudinary.v2.uploader.upload(path, {
            folder: "elmpier_app", 
            allowed_formats: ["jpg", "jpeg", "png"],
          });
          imageUrlPayload.imageUrl.push(uploadedImage.url);

          fs.unlinkSync(path);
        }

            const response = await productService.CreateProduct(payload, imageUrlPayload);
            return res.status(201).json({response});
        } catch (error) {
            return res.status(400).json(new BadRequestError(error.message, error ))
        }
    })

    app.get("/user/products", validationMiddleware(Product), async(req: Request, res: Response, next: NextFunction) => {
        try {
            const currentUser: UserPayload = req.user
            const response = await productService.GetUserProduct(currentUser)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error ))
        }
    })

    app.get("/products/product/:id", validationMiddleware(Product), async(req: Request, res: Response, next: NextFunction) => {
        try {
            const productId = Number(req.params.id);
            const response = await productService.GetProductById(productId)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error ))
        }
    })

    app.patch("/products/product/:id", productUpload, validationMiddleware(Product), async(req: Request, res: Response, next: NextFunction) => {
        try {
            const currentUser: UserPayload = req.user;
            const productId = Number(req.params.id)
            const payload: Product = req.body
            const response = await productService.UpdateProduct(productId, payload, req.files as Express.Multer.File[], currentUser)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error ))
        }
    })

    app.delete("/products/product/:id", validationMiddleware(Product), async(req: Request, res: Response, next: NextFunction) => {
        try {
            const currentUser: UserPayload = req.user;
            const productId = Number(req.params.id)
            const response = await productService.DeleteProduct(currentUser, productId);
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error ))
        }   
    })

    app.get("/product/category", validationMiddleware(Product), async(req: Request, res: Response, next: NextFunction) => {
        try {
            const response = await productService.GetCategories();
            return res.status(200).json({ response });
        } catch (error) {
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    });

    app.post("/product/category/create", async(req: Request, res: Response, next: NextFunction) => {
        try {
            // const admin: AdminPayload = req.admin
            const payload: Category = req.body
            const response = await productService.CreateCategory(payload)
            return res.status(201).json({response})
        } catch (error){    
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.patch("/product/category/:id", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const payload: Category = req.body
            const id = Number(req.params.id);
            const response = await productService.UpdateCategory(payload, id)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.delete("/product/category/:id", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const id = Number(req.params.id);
            const response = await productService.DeleteCategory(id)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.get("/product/brand", validationMiddleware(Product), async(req: Request, res: Response, next: NextFunction) => {
        try {
            const response = await productService.GetBrands();
            return res.status(200).json({ response });
        } catch (error) {
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    });

    app.post("/product/brand/create", async(req: Request, res: Response, next: NextFunction) => {
        try {
            // const admin: AdminPayload = req.admin
            const payload: Brand = req.body
            const response = await productService.CreateBrand(payload)
            return res.status(201).json({response})
        } catch (error){    
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.patch("/product/brand/:id", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const payload: Brand = req.body;
            const id = Number(req.params.id);
            const response = await productService.UpdateBrand(payload, id)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.delete("/product/brand/:id", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const id = Number(req.params.id);
            const response = await productService.DeleteBrand(id)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.get("/product/model", validationMiddleware(Product), async(req: Request, res: Response, next: NextFunction) => {
        try {
            const response = await productService.GetModels();
            return res.status(200).json({ response });
        } catch (error) {
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    });

    app.post("/product/model/create", async(req: Request, res: Response, next: NextFunction) => {
        try {
            // const admin: AdminPayload = req.admin
            const payload: Model = req.body
            const response = await productService.CreateModel(payload)
            return res.status(201).json({response})
        } catch (error){    
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })
    
    app.delete("/product/model/:id", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const id = Number(req.params.id)
            const response = await productService.DeleteModel(id)
            return res.status(201).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.patch("/product/model/:id", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const payload: Model = req.body
            const id = Number(req.params.id)
            const response = await productService.UpdateModel(payload, id)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })
}