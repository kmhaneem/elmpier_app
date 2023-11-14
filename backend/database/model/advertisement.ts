import { IsNumber, IsString, Length  } from "class-validator";

export class Advertisement {
    id?: number;
    
    userId?: number;
    @Length(5, 100)
    name: string;
    description: string;
    price: number;
    categoryId: number;
    brandId: number;
    modelId: number;
    provinceId: number;
    districtId: number;
    conditionId: number
}

export class AdvertisementImage {
    id?: number;
    productId?: number;
    imageUrl: string[]
}

export interface AdvertisementSearchParams {
  name?: string;
  
}