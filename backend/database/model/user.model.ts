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
  profile: string;
  verified: boolean;
  otp: number;
}

export class UserAddress {
  id?: number;
  user_id?: number;
  address_lane_1: string;
  address_lane_2: string;
  city: string;
  postal_code: number;
  province: string;
}

export interface UserPayload {
  _id: number;
  email: string;
  verified: boolean;
}
