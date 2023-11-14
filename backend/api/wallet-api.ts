import { Application, Request, Response, NextFunction } from "express";
import { WalletService } from "../service/wallet-service";
import { UserPayload } from "../database/model/user.model";
import { BadRequestError } from "../utils/app-errors";
import { Authenticate } from "./middleware/common-auth";
import { Transaction } from "../database/model/transaction.model";

export default (app: Application) => {
    const walletService = new WalletService();

    app.patch("/wallet/add", Authenticate, async (req: Request, res: Response, next: NextFunction) => {
        try {
            const payload: UserPayload = req.user
            const { paymentMethod, status, paymentId, amount } = req.body;
            const transactionInputs: Transaction = {
                paymentMethod: paymentMethod,
                status: status,
                paymentId: paymentId,
              };
            const response = await walletService.AddAmount(payload, amount, transactionInputs)
            return res.status(200).json({response})
        } catch (error){
            return res.status(400).json(new BadRequestError(error.message, error));
        }
    })

    app.get("/wallet/amount", Authenticate, async (req: Request, res: Response, next: NextFunction) => {
        try {
            const payload: UserPayload = req.user
            const response = await walletService.GetAmount(payload)
            console.log("WALLET CALLED")
            return res.status(200).json({response})
        } catch (error){
            throw error
        }
    })
}