import { Application, Request, Response, NextFunction } from "express";
import { AdminService } from "../service/admin-service";
import { BadRequestError } from "../utils/app-errors";
import { validationMiddleware } from "./middleware/validate-middleware";
import { Admin } from "../database/model/admin.model";
import { AdminAuthenticate } from "./middleware/common-auth";

export default (app: Application) => {
  const adminService = new AdminService();

  app.post(
    "/admin/signup",
    validationMiddleware(Admin),
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: Admin = req.body;
        const response = await adminService.CreateAdmin(payload);
        return res.status(201).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.post(
    "/admin/login",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const payload: Admin = req.body;
        const response = await adminService.LoginAdmin(payload);
        console.log("SIGNIN SUccess admin", payload);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/users",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetUsers();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/transaction",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetTransaction();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/product-review",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetProductsToReview();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/admin/product-review",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = req.body.id;
        const response = await adminService.UpdateProductsToReview(id);
        console.log("CALLED");
        return res.status(200).json({ response });
      } catch (error) {
        console.log(" ERROR CALLED");
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.delete(
    "/admin/product-review",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = req.body.id;
        const response = await adminService.DeclineProduct(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/admin/product-visible",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = req.body.id;
        const response = await adminService.VisibleProduct(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/orders",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetAllOrders();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/order-item/:id",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = req.params.id;
        const response = await adminService.GetOrderItemById(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/products/all",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetAllProducts();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/products/approved",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetApprovedProducts();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/products/pending",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetPendingProducts();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/products/rejected",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetRejectedProducts();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/advertisements/all",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetAllAdvertisements();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/advertisements/approved",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetApprovedAdvertisements();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/advertisements/pending",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetPendingAdvertisements();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/advertisements/rejected",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetRejectedAdvertisements();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/orders/products",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetProductOrders();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/orders/ads",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetAdsOrders();
        console.log("ADS ORDERS CALLED", response);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/transactions/all",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetAllTransactions();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/users/all",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetAllUsers();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/users/normal",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetNormalUsers();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/users/plus",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetPlusUsers();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/delivery/users",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetDeliveryUsers();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.get(
    "/admin/product/rejected/reviews",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const response = await adminService.GetRejectedProductReviews();
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );
  app.get(
    "/admin/order/status/:id",
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = Number(req.params.id);
        const response = await adminService.GetOrderStatus(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/admin/product/approve/:id",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = Number(req.params.id);
        const response = await adminService.ApproveProduct(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/admin/product/reject/:id",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = Number(req.params.id);
        const response = await adminService.RejectProduct(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/admin/advertisement/approve/:id",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = Number(req.params.id);
        const response = await adminService.ApproveAdvertisement(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );

  app.patch(
    "/admin/advertisement/reject/:id",
    AdminAuthenticate,
    async (req: Request, res: Response, next: NextFunction) => {
      try {
        const id = Number(req.params.id);
        const response = await adminService.RejectAdvertisement(id);
        return res.status(200).json({ response });
      } catch (error) {
        return res.status(400).json(new BadRequestError(error.message, error));
      }
    }
  );
};
