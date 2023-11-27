import { Advertisement, AdvertisementImage } from "../database/model/advertisement";
import { UserPayload } from "../database/model/user.model";
import { AdvertisementRepository } from "../database/repository/advertisement-repository";

export class AdvertisementService {
  private repository: AdvertisementRepository;

  constructor() {
    this.repository = new AdvertisementRepository();
  }

  async CreateAdvertisement(user: UserPayload, advertisementInputs: Advertisement, imageUrl: AdvertisementImage){
    try {
        const userId = user._id;
        const totalCount = await this.repository.getCountOfAdvertisementsByUser(userId);
      
      const isPlusUser = await this.repository.checkIsPlusUser(userId);

      if (totalCount > 2 && !isPlusUser) {
        throw new Error("Limit Exceeded Error");
      }
        const response = await this.repository.AdvertisementCreate(userId, advertisementInputs, imageUrl);
        return response
    } catch (error){
        throw error
    }
  }

  async GetAdvertisement(userId: number){
    try {
        // const userId = user._id;
        const response = await this.repository.AdvertisementGet(userId)
        return response
    } catch (error){
        throw error
    }
  }

  async SearchAdvertisement(name: string, userId?: number){
    try {
      const result = await this.repository.AdvertisementSearch(name, userId)
      return result
    } catch (error){
      throw error
    }
  }
}

