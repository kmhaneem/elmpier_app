import { IsNumber, IsString, Length  } from "class-validator";

export class Product {
    
    id?: number;
    
    userId?: number;
    @Length(5, 100)
    name: string;
    description: string;
    price: number;
    categoryId: number;
    brandId: number;
    modelId: number;
    stockUnit: number;
}

export class ProductImage {
    id?: number;
    productId?: number;
    imageUrl: string[]
}

export class Category {
    id?: number;
    name: string
}

export class Brand {
    id?: number;
    categoryId: number
    name: string
}

export class Model {
    id?: number;
    brandId: number;
    name: string
}

export class ProductFilter {
    categoryId?: number;
    brandId?: number;
    modelId?: number
}

export interface ProductSearchParams {
  name?: string;
  
}