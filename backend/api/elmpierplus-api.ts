import { Application, Request, Response, NextFunction } from "express";
import { ElmpierPlusService } from "../service/elmpierplus-service";
import { UserPayload } from "../database/model/user.model";
import { BadRequestError } from "../utils/app-errors";
import { Authenticate } from "./middleware/common-auth";
import { Transaction } from "../database/model/transaction.model";

export default (app: Application) => {
  const elmpierPlusService = new ElmpierPlusService();

  app.patch(
    "/user/eplus",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const { paymentMethod, status, paymentId } = req.body;
        const payload: UserPayload = req.user;

        const transactionInputs: Transaction = {
          paymentMethod: paymentMethod,
          status: status,
          paymentId: paymentId,
        };

        const response = await elmpierPlusService.CreateEPlus(
          payload,
          transactionInputs
        );
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get("/user/eplus/verify", Authenticate, async(req: Request, res: Response, next: NextFunction) => {
    try {
        const payload: UserPayload = req.user;
        const response = await elmpierPlusService.CheckEPlus(payload);
        console.log("PLUS USER CALLEd")
        return res.status(200).json({response})
    } catch (error){
        return res.status(400).json(new BadRequestError(error.message, error));
    }
  })
};
