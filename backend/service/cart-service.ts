import { Cart, CartItem } from "../database/model/cart.model";
import { User, UserPayload } from "../database/model/user.model";
import { CartRepository } from "../database/repository/cart-repository";

export class CartService {
  private repository: CartRepository;

  constructor() {
    this.repository = new CartRepository();
  }

  async AddToCart(cartItemInputs: CartItem, payload: UserPayload) {
    try {
      const userId = payload._id;
      const result = await this.repository.CartAdd(cartItemInputs, userId);
      return result;
    } catch (error) {
      throw error;
    }
  }
  
  async GetCartItems(userInputs: UserPayload) {
    try {
      const userId = userInputs._id;
      const result = await this.repository.CartGet(userId);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async RemoveFromCart(userId: number) {
    try {
      const result = await this.repository.CartRemove(userId);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async RemoveSpecificItemFromCart(userId, productId) {
    try {
        const result = await this.repository.SpecificCartRemove(userId, productId);
        return result;
    } catch (error) {
        throw error;
    }
}


  async ClearCart() {}
}
