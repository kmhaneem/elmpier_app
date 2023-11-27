import { Admin } from "../database/model/admin.model";
import { AdminRepository } from "../database/repository/admin-repository";
import {
  GeneratePassword,
  GenerateSalt,
  GenerateToken,
  GenerateTokenAdmin,
  ValidatePassword,
} from "../utils/password-utils";

export class AdminService {
  private repository: AdminRepository;

  constructor() {
    this.repository = new AdminRepository();
  }

  async CreateAdmin(adminInput: Admin) {
    try {
      const salt = await GenerateSalt();
      const hashedPassword = await GeneratePassword(adminInput.password, salt);
      adminInput.password = hashedPassword;
      adminInput.salt = salt;

      const token = await GenerateTokenAdmin({
        _id: adminInput.id,
        email: adminInput.email,
      });

      const rowCount = await this.repository.AdminCreate(adminInput);
      if (!rowCount) {
        return "Admin creation failed";
      }
      return {
        message: "Admin Created Successfully",
        token,
        email: adminInput.email,
      };
    } catch (error) {
      throw error;
    }
  }

  async LoginAdmin(adminInput: Admin) {
    try {
      const result = await this.repository.AdminLogin(adminInput);
      if (!result) {
        return "Admin login failed";
      }
      const admin = result.rows[0];
      const validation = await ValidatePassword(
        adminInput.password,
        admin.password,
        admin.salt
      );

      if (!validation) {
        return "Password does not match";
      }
      const token = await GenerateTokenAdmin({
        _id: admin.id,
        email: admin.email,
      });
      return {
        id: admin.id,
        message: "Admin Login Successfully",
        token,
      };
    } catch (error) {
      throw error;
    }
  }

  async GetUsers() {
    try {
      const response = await this.repository.UsersGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetTransaction() {
    try {
      const response = await this.repository.TransactionGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetProductsToReview() {
    try {
      const response = await this.repository.ProductsToReviewGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async UpdateProductsToReview(id: number) {
    try {
      const response = await this.repository.ProductsToReviewUpdate(id);
      return response;
    } catch (error) {
      throw error;
    }
  }

  async DeclineProduct(id: number) {
    try {
      const response = await this.repository.ProductDecline(id);
      return response;
    } catch (error) {
      throw error;
    }
  }

  async VisibleProduct(id: number) {
    try {
      const response = await this.repository.ProductVisible(id);
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetAllOrders() {
    try {
      const response = await this.repository.AllOrdersGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetOrderItemById(id: string) {
    try {
      const response = await this.repository.OrderItemByIdGet(id);
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetAllProducts() {
    try {
      const response = await this.repository.AllProductsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetApprovedProducts() {
    try {
      const response = await this.repository.ApprovedProductsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetPendingProducts() {
    try {
      const response = await this.repository.PendingProductsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetRejectedProducts() {
    try {
      const response = await this.repository.RejectedProductsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetAllAdvertisements() {
    try {
      const response = await this.repository.AllAdvertisementsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetApprovedAdvertisements() {
    try {
      const response = await this.repository.ApprovedAdvertisementsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetPendingAdvertisements() {
    try {
      const response = await this.repository.PendingAdvertisementsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetRejectedAdvertisements() {
    try {
      const response = await this.repository.RejectedAdvertisementsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetProductOrders() {
    try {
      const response = await this.repository.ProductOrdersGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetAdsOrders() {
    try {
      const response = await this.repository.AdsOrdersGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetAllTransactions() {
    try {
      const response = await this.repository.TransactionsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetAllUsers() {
    try {
      const users = await this.repository.AllUsersGet();
      const sanitizedUsers = users.map(
        ({ password, salt, otp, is_plus_user, ...rest }) => rest
      );
      return sanitizedUsers;
    } catch (error) {
      throw error;
    }
  }

  async GetNormalUsers() {
    try {
      const users = await this.repository.NormalUsersGet();
      const sanitizedUsers = users.map(
        ({ password, salt, otp, is_plus_user, ...rest }) => rest
      );
      return sanitizedUsers;
    } catch (error) {
      throw error;
    }
  }

  async GetPlusUsers() {
    try {
      const users = await this.repository.PlusUsersGet();
      const sanitizedUsers = users.map(
        ({ password, salt, otp, is_plus_user, ...rest }) => rest
      );
      return sanitizedUsers;
    } catch (error) {
      throw error;
    }
  }

  async GetDeliveryUsers() {
    try {
      const delivery = await this.repository.DeliveryUsersGet();
      const sanitizedUsers = delivery.map(
        ({ password, salt, ...rest }) => rest
      );
      return sanitizedUsers;
    } catch (error) {
      throw error;
    }
  }

  async GetRejectedProductReviews() {
    try {
      const response = await this.repository.RejectProductsReviewGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetOrderStatus(id: number) {
    try {
      const response = await this.repository.OrderStatusGet(id);
      return response;
    } catch (error) {
      throw error;
    }
  }

  async ApproveProduct(id: number) {
    try {
      const response = await this.repository.ProductApprove(id);
      return response;
    } catch (error) {
      throw error;
    }
  }
  async RejectProduct(id: number) {
    try {
      const response = await this.repository.ProductReject(id);
      return response;
    } catch (error) {
      throw error;
    }
  }
  async ApproveAdvertisement(id: number) {
    try {
      const response = await this.repository.AdvertisementApprove(id);
      return response;
    } catch (error) {
      throw error;
    }
  }
  async RejectAdvertisement(id: number) {
    try {
      const response = await this.repository.AdvertisementReject(id);
      return response;
    } catch (error) {
      throw error;
    }
  }
}
