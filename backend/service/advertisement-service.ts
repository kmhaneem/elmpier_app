import { Advertisement, AdvertisementImage } from "../database/model/advertisement";
import { UserPayload } from "../database/model/user.model";
import { AdvertisementRepository } from "../database/repository/advertisement-repository";
import cloudinary from "../utils/cloudinary";
import fs from "fs";

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

  async GetAdvertisement(payload: UserPayload){
    try {
        const id = payload._id
        const response = await this.repository.AdvertisementGet(id)
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

  async GetAdvertisementCondition(){
    try {
      const result = await this.repository.AdvetisementConditionGet()
      return result
    } catch (error){
      throw error
    }
  }

  async GetActiveAdvertisement(payload: UserPayload){
    try {
      const id = payload._id;
      const result = await this.repository.ActiveAdvertisementGet(id)
      return result
    } catch (error){
      throw error
    }
  }
  
  async GetExpiredAdvertisement(payload: UserPayload){
    try {
      const id = payload._id;
      const result = await this.repository.ExpiredAdvertisementGet(id);
      return result
    } catch (error){
      throw error;
    }
  }

  async UpdateAdvertisement(
    advertisementId: number,
    advertisementUpdates: Advertisement,
    files: Express.Multer.File[],
    currentUser: UserPayload
  ) {
    try {
      const imageUrls: string[] = [];
      const userId = currentUser._id;

      if (files && files.length > 0) {
        for (const file of files) {
          const { path } = file;
          const uploadedImage = await cloudinary.v2.uploader.upload(path, {
            folder: "elmpier_app",
            allowed_formats: ["jpg", "jpeg", "png", "webp"],
          });
          imageUrls.push(uploadedImage.url);
          fs.unlinkSync(path); 
        }
      }

      const result = await this.repository.AdvertisementUpdate(
        advertisementId,
        advertisementUpdates,
        imageUrls,
        userId
      );
      return result;
    } catch (error) {
      throw error;
    }
  }

  async DeleteAdvertisement(currentUser: UserPayload, advertisementId: number) {
    try {
      const userId = currentUser._id;
      const result = await this.repository.AdvertisementDelete(userId, advertisementId);
      return result;
    } catch (error) {
      throw error;
    }
  }
}

