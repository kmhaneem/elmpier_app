import { Application, Request, Response, NextFunction } from "express";
import { DemoService } from "../service/demo-service";
import { BadRequestError } from "../utils/app-errors";

export default (app: Application) => {
    const demoService = new DemoService()

    app.patch("/demo/user", async (req: Request, res: Response, next: NextFunction) => {
        try {   
            const id = req.body.id
            const name = req.body.name
            const email = req.body.email

            const response = await demoService.UserUpdate(id, name, email)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.get("/demo/user", async (req: Request, res: Response, next: NextFunction) => {
        try {
            const id = req.body.id
            const response = await demoService.UserGet(id)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })
}