import { Order } from "../database/model/order.model";
import { Transaction } from "../database/model/transaction.model";
import { AdsRepository } from "../database/repository/ads-repository";

export class AdsService {
  private repository: AdsRepository;

  constructor() {
    this.repository = new AdsRepository();
  }

  async CreateTopAds(
    advertisementId: number,
    transactionInputs: Transaction,
    orderInputs: Order
  ) {
    try {
      const response = await this.repository.TopAdsCreate(
        advertisementId,
        transactionInputs,
        orderInputs
      );
      return response;
    } catch (error) {
      throw error;
    }
  }

  async CreatePopAds(
    advertisementId: number,
    transactionInputs: Transaction,
    orderInputs: Order
  ) {
    try {
      const response = await this.repository.PopAdsCreate(
        advertisementId,
        transactionInputs,
        orderInputs
      );
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetPopAds() {
    try {
      const response = await this.repository.PopAdsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async GetTopAds() {
    try {
      const response = await this.repository.TopAdsGet();
      return response;
    } catch (error) {
      throw error;
    }
  }

  async CreateAdvertisementTopAds(productId: number) {
    try {
      const response = await this.repository.AdvertisementTopAdsCreate(
        productId
      );
      return response;
    } catch (error) {
      throw error;
    }
  }
}
