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

        const response = await advertisementService.CreateAdvertisement(userData, payload, imageUrlPayload);
        return res.status(201).json({response})
      } catch (error) {
        console.log("hello", error)
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get("/advertisement", OptionalAuthenticate, async(req: Request, res: Response, next: NextFunction) => {
    try {
        const id = req.body.id
        const response = await advertisementService.GetAdvertisement(id)
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
};
