import { Request } from "express";
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import { UserPayload } from "../database/model/user.model";
import dotenv from "dotenv";
import path from "path";
dotenv.config({ path: path.resolve(__dirname, "../config/.env") });

export const GenerateSalt = async () => {
  return await bcrypt.genSalt();
};

export const GeneratePassword = async (password: string, salt: string) => {
  return await bcrypt.hash(password, salt);
};

export const ValidatePassword = async (
  enteredPassword: string,
  savedPassword: string,
  salt: string
) => {
  return (await GeneratePassword(enteredPassword, salt)) === savedPassword;
};

export const GenerateToken = async (payload: UserPayload) => {
  return jwt.sign(payload, process.env.APP_SECRET);
};

export const ValidateToken = async (req: Request) => {
  const token = req.get("Authorization");
  if (token) {
    const payload = (await jwt.verify(
      token.split(" ")[1],
      process.env.APP_SECRET
    )) as UserPayload;
    req.user = payload;
    return true;
  }
  return false;
};
