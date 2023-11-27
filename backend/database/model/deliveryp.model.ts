import { IsEmail, Length } from "class-validator";

export class DeliveryPerson {
    id?: number;
    name: string;
    @IsEmail()
    email: string;
    password: string;
    salt: string;
    province: number;
    district: number
}

export interface DeliveryPersonPayload {
    _id: number;
    email: string;
  }