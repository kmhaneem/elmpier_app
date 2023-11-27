import { Application, Request, Response, NextFunction } from "express";
import { AdvertisementService } from "../service/advertisement-service";
import { BadRequestError } from "../utils/app-errors";
import { Advertisement, AdvertisementImage } from "../database/model/advertisement";
import fs from "fs";
import cloudinary from "../utils/cloudinary";
import { UserPayload } from "../database/model/user.model";
import { Authenticate, OptionalAuthenticate } from "./middleware/common-auth";
import { productUpload } from "./middleware/upload";

export default (app: Application) => {
  const advertisementService = new AdvertisementService();

  app.post(
    "/advertisement/create",
    Authenticate,
    productUpload,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const imageUrlPayload: AdvertisementImage = {
          imageUrl: [],
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
        const userData: UserPayload = req.user;

        const payload: Advertisement = req.body;
        console.log("Payload Console", payload);

        const response = await advertisementService.CreateAdvertisement(userData, payload, imageUrlPayload);
        return res.status(201).json({response})
      } catch (error) {
        console.log("hello", error)
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get("/advertisement", Authenticate, async(req: Request, res: Response, next: NextFunction) => {
    try {
        const payload: UserPayload = req.user
        const response = await advertisementService.GetAdvertisement(payload)
        console.log("ADS CALLED")
        return res.status(200).json({response})
    } catch (error){
        return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.get(
    "/advertisement/search",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const advertisementName = req.query.query as string;
        const userId = req.body.userId;

        const response = await advertisementService.SearchAdvertisement(
          advertisementName,
          userId
        );
        console.log("SEAECH REQ.BODY", req.body);

        return res.status(200).json({response});
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get("/advertisement/condition", async (req: Request, res: Response, next: NextFunction) => {
    try {
      const response = await advertisementService.GetAdvertisementCondition()
      return res.status(200).json({response})
    } catch (error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.get("/advertisement/active", Authenticate, async (req: Request, res: Response, next: NextFunction) => {
    try {
      const payload: UserPayload = req.user
      console.log(payload)
      const response = await advertisementService.GetActiveAdvertisement(payload)
      return res .status(200).json({response})
    } catch (error){
      console.log(error)
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.get("/advertisement/expired", Authenticate, async (req: Request, res: Response, next: NextFunction) => {
    try {
      const payload: UserPayload = req.user
      const response = await advertisementService.GetExpiredAdvertisement(payload)
      return res .status(200).json({response})
    } catch (error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.patch(
    "/advertisements/advertisement/:id",
    Authenticate,
    productUpload,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const productId = Number(req.params.id);
        const payload: Advertisement = req.body;
        const response = await advertisementService.UpdateAdvertisement(
          productId,
          payload,
          req.files as Express.Multer.File[],
          currentUser
        );
        console.log("RESPONSES ARE: ", response)
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.delete(
    "/advertisements/advertisement/:id",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const advertisementId = Number(req.params.id);
        const response = await advertisementService.DeleteAdvertisement(
          currentUser,
          advertisementId
        );
        console.log("DELETE CALLED")
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );
};
