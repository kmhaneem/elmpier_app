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
  address: string;
  postalcode: string;
  verified: boolean;
  otp: number;
}

export interface UserPayload {
  _id: number;
  email: string;
  verified: boolean;
}
