import { Request } from "express";
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import { UserPayload } from "../database/model/user.model";
import dotenv from "dotenv";
import path from "path";
import { AdminPayload } from "../database/model/admin.model";
import {  DeliveryPersonPayload } from "../database/model/deliveryp.model";
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

export const GenerateTokenAdmin = async (payload: AdminPayload) => {
  return jwt.sign(payload, process.env.APP_SECRET);
};

export const GenerateTokenDeliveryPerson = async (payload: DeliveryPersonPayload) => {
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

export const ValidateAdminToken = async (req: Request) => {
  const token = req.get("Authorization");
  if (token) {
    const payload = (await jwt.verify(
      token.split(" ")[1],
      process.env.APP_SECRET
    )) as AdminPayload;
    req.admin = payload;
    return true;
  }
  return false;
};

export const ValidatDeliveryPersonToken = async (req: Request) => {
  const token = req.get("Authorization");
  if (token) {
    const payload = (await jwt.verify(
      token.split(" ")[1],
      process.env.APP_SECRET
    )) as DeliveryPersonPayload;
    req.delivery = payload;
    return true;
  }
  return false;
};
