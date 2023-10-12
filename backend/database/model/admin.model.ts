import { IsEmail, Length } from "class-validator";

export class Admin {
    id?: number;
    name: string;
    @IsEmail()
    email: string;
    password: string;
    salt: string;
}

export interface AdminPayload {
    _id: number;
    email: string;
  }
  