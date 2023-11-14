import { Application, NextFunction, Request, Response } from "express";
import { TransactionService } from "../service/transaction-service";
import { BadRequestError } from "../utils/app-errors";
import { Authenticate } from "./middleware/common-auth";
import { UserPayload } from "../database/model/user.model";
import { Transaction } from "../database/model/transaction.model";
import { Order } from "../database/model/order.model";
import multer from "multer";

export default (app: Application) => {
  const upload = multer();
  const transactionService = new TransactionService();

  app.post(
    "/payment",
    upload.none(),
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const { userId, paymentMethod, status, paymentId, statusId, amount } =
          req.body;

        const transactionInputs: Transaction = {
          userId: userId,
          paymentMethod: paymentMethod,
          status: status,
          paymentId: paymentId,
        };

        const orderInputs: Order = {
          orderStatus: statusId,
          amount: amount,
        };

        const response = await transactionService.transactionCreate(
          transactionInputs,
          orderInputs
        );
        return res.status(201).json({ response });
      } catch (error) {
        res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );
};
