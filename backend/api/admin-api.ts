import { Application, Request, Response, NextFunction } from "express";
import { AdminService } from "../service/admin-service";
import { BadRequestError } from "../utils/app-errors";
import { validationMiddleware } from "./middleware/validate-middleware";
import { Admin } from "../database/model/admin.model";

export default (app: Application) => {
    const adminService = new AdminService();

    app.post("/admin/signup", validationMiddleware(Admin), async(req: Request, res: Response, next: NextFunction) => {
        try {
            const payload: Admin = req.body;
            const response = await adminService.CreateAdmin(payload);
            return res.status(201).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    })

    app.post("/admin/login", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const payload: Admin = req.body
            const response = await adminService.LoginAdmin(payload)
            console.log("SIGNIN SUccess admin", payload)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    })

    app.get("/admin/users", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const response = await adminService.GetUsers()
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    })
    
    app.get('/admin/transaction', async(req: Request, res: Response, next: NextFunction) => {
        try {
            const response = await adminService.GetTransaction()
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    })

    app.get("/admin/product-review", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const response = await adminService.GetProductsToReview()
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    })

    app.patch("/admin/product-review", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const id = req.body.id
            const response = await adminService.UpdateProductsToReview(id)
            console.log("CALLED");
            return res.status(200).json({response})
        } catch (error){
            console.log(" ERROR CALLED");
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    })

    app.delete("/admin/product-review", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const id = req.body.id
            const response = await adminService.DeclineProduct(id)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    })

    app.patch("/admin/product-visible", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const id = req.body.id
            const response = await adminService.VisibleProduct(id)
            return res.status(200).json({response})
        } catch(error){
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    } )
}