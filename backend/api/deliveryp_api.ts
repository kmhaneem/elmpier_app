import { Application, Request, Response, NextFunction } from "express";
import { DeliveryPersonService } from "../service/deliveryp_service";
import { BadRequestError } from "../utils/app-errors";
import {
  DeliveryPerson,
  DeliveryPersonPayload,
} from "../database/model/deliveryp.model";
import { DeliveryPersonAuthenticate } from "./middleware/common-auth";

export default (app: Application) => {
  const deliveryPersonService = new DeliveryPersonService();

  app.post(
    "/delivery-person/create",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: DeliveryPerson = req.body;
        const response = await deliveryPersonService.CreateAccount(payload);
        return res.status(201).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.post(
    "/delivery-person/login",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: DeliveryPerson = req.body;
        console.log(payload)
        const response = await deliveryPersonService.LoginAccount(payload);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/delivery-person/order-item",
    DeliveryPersonAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: DeliveryPersonPayload = req.delivery;
        const response = await deliveryPersonService.GetOrderItemByDistrict(
          payload
        );
        console.log('DEL P ', payload)
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/delivery-person/ordered-product",
    DeliveryPersonAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = req.body.id;
        console.log("Product ID", id);
        const response = await deliveryPersonService.GetOrderedProduct(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.post(
    "/delivery-person/product/reject",
    DeliveryPersonAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const productId = req.body.productId;
        const reason = req.body.reason;

        const response = await deliveryPersonService.RejectProduct(
          productId,
          reason
        );
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/delivery-person/product/confirm",
    DeliveryPersonAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = req.body.id;
        const response = await deliveryPersonService.ConfirmPickup(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/delivery-person/delivery-item",
    DeliveryPersonAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: DeliveryPersonPayload = req.delivery;
        const response = await deliveryPersonService.GetDeliveryItemByDistrict(
          payload
        );
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch("/delivery-person/delivery-item", DeliveryPersonAuthenticate, async (req: Request, res: Response, next: NextFunction) => {
    try {
      const id = req.body.id
      const response = await deliveryPersonService.DeliveryProduct(id)
      return res.status(200).json({response})
    } catch (error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.get("/delivery-person/profile", DeliveryPersonAuthenticate, async (req: Request, res: Response, next: NextFunction) => {
    try {
      const payload: DeliveryPersonPayload = req.delivery
      const response = await deliveryPersonService.GetProfile(payload)
      return res.status(200).json({response})
    } catch (error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.get("/delivery-person/picked-items", async (req: Request, res: Response, next: NextFunction) => {
    try {
      const response = await deliveryPersonService.GetPickupItems();
      return res.status(200).json({response})
    } catch (error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.get("/delivery-person/rejected-items", async (req: Request, res: Response, next: NextFunction) => {
    try {
      const response = await deliveryPersonService.GetRejectedItems();
      return res.status(200).json({response})
    } catch (error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })
};
