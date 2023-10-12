import { plainToInstance } from "class-transformer";
import { Application, Request, Response, NextFunction } from "express";
import { User, UserAddress, UserPayload } from "../database/model/user.model";
import { validate } from "class-validator";
import { BadRequestError } from "../utils/app-errors";
import { UserService } from "../service/user-service";
import { validationMiddleware } from "./middleware/validate-middleware";
import { GenerateToken } from "../utils/password-utils";
import { Authenticate } from "./middleware/common-auth";

export default (app: Application) => {
  const userService = new UserService();
  app.post(
    "/user/signup",
    validationMiddleware(User),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: User = req.body;
        const response = await userService.CreateUser(payload);
        return res.status(201).json({ response });
      } catch (error) {
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
        const response = await userService.LoginUser(payload);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.use(Authenticate);
  app.patch(
    "/user/verify",
    validationMiddleware(User),

    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const payload: User = req.body;
        const response = await userService.VerifyUser(payload, currentUser);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/user/otp",
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
    validationMiddleware(User),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const response = await userService.GetUserProfile(currentUser);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/user/profile",
    validationMiddleware(User),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const userInputs: User = req.body;
        const userAddress: UserAddress = req.body;
        const response = await userService.UpdateUserProfile(
          userInputs,
          userAddress,
          currentUser
        );
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );
};
