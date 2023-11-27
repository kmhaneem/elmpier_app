import { DeliveryPerson, DeliveryPersonPayload } from "../database/model/deliveryp.model";
import { DeliveryPersonRepository } from "../database/repository/deliveryp-repository";
import {
  GeneratePassword,
  GenerateSalt,
  GenerateToken,
  GenerateTokenDeliveryPerson,
  ValidatePassword,
} from "../utils/password-utils";

export class DeliveryPersonService {
  private repository: DeliveryPersonRepository;

  constructor() {
    this.repository = new DeliveryPersonRepository();
  }

  async CreateAccount(deliveryPersonInputs: DeliveryPerson) {
    try {
      const salt = await GenerateSalt();
      const hashedPassword = await GeneratePassword(
        deliveryPersonInputs.password,
        salt
      );
      deliveryPersonInputs.password = hashedPassword;
      deliveryPersonInputs.salt = salt;

      const token = await GenerateTokenDeliveryPerson({
        _id: deliveryPersonInputs.id,
        email: deliveryPersonInputs.email,
      });

      const rowCount = await this.repository.AccountCreate(
        deliveryPersonInputs
      );

      const deliveryPersonId = rowCount.rows[0];

      if (!rowCount) {
        return "Delivery Person Account creation failed";
      }

      return {
        id: deliveryPersonId.id,
        message: "Delivery Person Created Successfully",
        token,
        email: deliveryPersonInputs.email,
      };
    } catch (error) {
      throw error;
    }
  }

  async LoginAccount(deliveryPersonInputs: DeliveryPerson) {
    try {
      const result = await this.repository.AccountLogin(deliveryPersonInputs);
      if (result.rowCount === 0) {
        throw new Error("Delivery Person Not Found");
      }

      const deliveryPerson = result.rows[0];
      const validation = await ValidatePassword(
        deliveryPersonInputs.password,
        deliveryPerson.password,
        deliveryPerson.salt
      );

      if (!validation) {
        throw new Error("Password does not match");
      }

      const token = await GenerateTokenDeliveryPerson({
        _id: deliveryPerson.id,
        email: deliveryPerson.email,
      });

      return {
        id: deliveryPerson.id,
        email: deliveryPerson.email,
        message: "User Login Successfully",
        token,
      };
    } catch (error) {
      throw error;
    }
  }

  async GetOrderItemByDistrict(deliveryPersonPayload: DeliveryPersonPayload){
    try {
      const id = deliveryPersonPayload._id;
      console.log(id)
      const response = await this.repository.OrderItemGetByDistrict(id)
      return response
    } catch(error){
      throw error
    }
  }

  async GetOrderedProduct(id: number){
    try {
      const response = await this.repository.OrderedProductGet(id)
      return response
    } catch (error){
      throw error
    }
  }

  async RejectProduct(productId: number, reason: string){
    try {
      const response = await this.repository.ProductReject(productId, reason)
      return response
    } catch(error){
      throw error
    }
  }

  async ConfirmPickup(id: number){
    try {
      const response = await this.repository.PickUpConfirm(id)
      return response
    } catch (error){
      throw error
    }
  }

  async GetDeliveryItemByDistrict(deliveryPersonPayload: DeliveryPersonPayload){
    try {
      const id = deliveryPersonPayload._id;
      console.log("DP ID", id)
      const response = await this.repository.DeliveryProductGet(id)
      return response
    } catch (error){
      throw error
    }
  }

  async DeliveryProduct(id: number){
    try {
      const response = await this.repository.ProductDelivery(id)
      return response
    } catch(error){
      throw error
    }
  }

  async GetProfile(payload: DeliveryPersonPayload){
    try{
      const userId = payload._id;
      const response = await this.repository.ProfileGet(userId)
      const { password, salt, ...userInfo } =
      response.rows[0];
      return userInfo
    } catch (error){
      throw error
    }
  }

  async GetPickupItems(){
    try {
      const result = await this.repository.PickedItemsGet()
      return result
    } catch (error){
      throw error
    }
  }

  async GetRejectedItems(){
    try {
      const result = await this.repository.RejectItemsGet()
      return result
    } catch (error){
      throw error
    }
  }
}