import { Application, Request, Response, NextFunction } from "express";
import { AdsService } from "../service/ads-service";
import { BadRequestError } from "../utils/app-errors";
import { Transaction } from "../database/model/transaction.model";
import { Order } from "../database/model/order.model";

export default (app: Application) => {
  const adsService = new AdsService();

  app.post("/product/ads/top", async (req: Request, res: Response, next: NextFunction) => {
    try {

      const {id, userId, paymentMethod, status, paymentId, statusId, amount } =
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
      const response = await adsService.CreateTopAds(id, transactionInputs, orderInputs);
      return res.status(200).json({ response });
    } catch (error) {
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  });

  app.post("/product/ads/pop", async (req: Request, res: Response, next: NextFunction) => {
    try {

      const {id, userId, paymentMethod, status, paymentId, statusId, amount } =
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
      const response = await adsService.CreatePopAds(id, transactionInputs, orderInputs);
      console.log('POP ADS CALLED')
      return res.status(200).json({ response });
    } catch (error) {
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  });

  app.get("/product/ads/pop", async(req: Request, res: Response, next: NextFunction) => {
    try {
      const response = await adsService.GetPopAds()
      console.log("POP ADS CALLED")
      return res.status(200).json({response})
    } catch (error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.post("/advertisement/ads", async (req: Request, res: Response, next: NextFunction) => {
    try {
      const id = req.body.id;
      const response = await adsService.CreateAdvertisementTopAds(id);
      return res.status(200).json({ response });
    } catch (error) {
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  });
};
