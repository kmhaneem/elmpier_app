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
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error))
        }
    })
}