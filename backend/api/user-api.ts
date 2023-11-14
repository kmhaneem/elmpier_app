import { plainToInstance } from "class-transformer";
import { Application, Request, Response, NextFunction } from "express";
import { User, UserAddress, UserPayload } from "../database/model/user.model";
import { validate } from "class-validator";
import { BadRequestError } from "../utils/app-errors";
import { UserService } from "../service/user-service";
import { validationMiddleware } from "./middleware/validate-middleware";
import { GenerateToken } from "../utils/password-utils";
import { Authenticate } from "./middleware/common-auth";
import multer from "multer";

export default (app: Application, userService: UserService) => {
  // const userService = new UserService();
  const upload = multer();

  app.get("/province", async(req: Request , res: Response, next: NextFunction) => {
    try {
      const response = await userService.GetProvince()
      return res.status(200).json({response})
    } catch(error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.get("/district", async(req: Request , res: Response, next: NextFunction) => {
    try {
      // const provinceId = req.body.provinceId;
      const response = await userService.GetDistrict()
      return res.status(200).json({response})
    } catch(error){
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  })

  app.post(
    "/user/signup",
    upload.none(),
    validationMiddleware(User),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: User = req.body;
        console.log("payload", payload);
        const response = await userService.CreateUser(payload);
        console.log("SignUP Called Success");
        return res.status(201).json({ response });
      } catch (error) {
        console.log("SignUP Called Failed", error);
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.post(
    "/user/signin",
    validationMiddleware(User),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: User = req.body;
        // console.log(payload);
        const response = await userService.LoginUser(payload);
        // console.log("Sign In Success");
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  // app.use(Authenticate);
  app.patch(
    "/user/verify",
    Authenticate,
    validationMiddleware(User),

    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const payload: User = req.body;
        console.log(payload);
        const response = await userService.VerifyUser(payload, currentUser);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/user/otp",
    Authenticate,
    validationMiddleware(User),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const response = await userService.RequestOtp(currentUser);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/user/profile",
    Authenticate,
    validationMiddleware(User),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        console.log("User Profile", currentUser._id);
        const response = await userService.GetUserProfile(currentUser);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/user/profile",
    Authenticate,
    validationMiddleware(User),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const userInputs: UserAddress = {
          firstName: req.body.firstName,
          lastName: req.body.lastName,
          addressLine1: req.body.addressLine1,
          addressLine2: req.body.addressLine2,
          postalCode: req.body.postalCode,
          city: req.body.city,
          district: req.body.district,
          province: req.body.province
        }
        const response = await userService.UpdateUserProfile(currentUser, userInputs);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  // const cartItemPayload: CartItem = {
  //   productId: req.body.productId,
  //   name: req.body.name,
  //   price: req.body.price,
  //   itemQty: req.body.itemQty,
  //   imageUrl: req.body.imageUrl,
  // };

  // const cartPayload: Cart = {
  //   userId: req.body.userId,
  // };
};
