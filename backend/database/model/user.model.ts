import { IsEmail, Length } from "class-validator";

export class User {
  id?: number;

  @IsEmail()
  email: string;

  @Length(9, 11)
  phone: string;

  @Length(6, 15)
  password: string;
  salt: string;
  firstname: string;
  lastname: string;
  verified: boolean;
  otp: number;
}

export class UserAddress {
  id?: number;
  userId?: number;
  firstName: string;
  lastName: string;
  addressLine1: string;
  addressLine2: string;
  city: string;
  postalCode: number;
  district: string;
  province: string;
}

export interface UserPayload {
  _id: number;
  email: string;
  verified: boolean;
}
