import { Application, Request, Response, NextFunction } from "express";
import { CartService } from "../service/cart-service";
import { Authenticate } from "./middleware/common-auth";
import { Cart, CartItem } from "../database/model/cart.model";
import { BadRequestError } from "../utils/app-errors";
import multer from "multer";
import { User, UserPayload } from "../database/model/user.model";

export default (app: Application) => {
  const cartService = new CartService();
  const upload = multer();

  app.post(
    "/cart",
    upload.none(),
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const cartItemPayload: CartItem = {
          productId: req.body.productId,
          name: req.body.name,
          price: req.body.price,
          itemQty: req.body.itemQty,
          imageUrl: req.body.imageUrl,
        };
        const payload: UserPayload = req.user;

        const cartPayload: Cart = {
          userId: req.body.userId,
        };
        console.log("USEr ID IS", cartPayload.userId);

        const response = await cartService.AddToCart(cartItemPayload, payload);
        return res.status(201).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/cart",
    upload.none(),
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const currentUser: UserPayload = req.user;
        const response = await cartService.GetCartItems(currentUser);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.delete(
    "/cart",
    Authenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const userId = req.body.userId;

        const response = await cartService.RemoveFromCart(userId);
        console.log("DELEteD SUCCESSfuL");
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.delete("/cart/item", Authenticate, async (req, res, next) => {
    try {
      const userId = req.body.userId;
      const productId = req.body.productId;
      console.log(userId, productId);

      if (!userId || !productId) {
        throw new Error("User ID and Product ID are required");
      }

      const response = await cartService.RemoveSpecificItemFromCart(
        userId,
        productId
      );
      console.log("Item Deleted Successfully");
      return res.status(200).json({ response });
    } catch (error) {
      return res.status(400).json(new BadRequestError(error.message, error));
    }
  });
};
