import { Application, Request, Response, NextFunction } from "express";
import { OrderService } from "../service/order-service";
import { Authenticate } from "./middleware/common-auth";
import { BadRequestError } from "../utils/app-errors";
import { User, UserPayload } from "../database/model/user.model";

export default (app: Application) => {
    const orderService = new OrderService();

    app.get("/orders", Authenticate, async(req: Request, res: Response, next: NextFunction) => {
        try {
            const payload: UserPayload = req.user;
            console.log("User ID", payload._id);
            const response = await orderService.GetOrders(payload)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.get("/orders/order-item/status", async(req: Request, res: Response, next: NextFunction) => {
        try {
            const id = req.body.id
            const response = await orderService.GetOrderItemStatus(id)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })
}