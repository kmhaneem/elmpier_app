import { Request, Response, NextFunction } from "express";
import { UserPayload } from "../../database/model/user.model";
import { ValidateToken } from "../../utils/password-utils";

declare global {
  namespace Express {
    interface Request {
      user?: UserPayload;
    }
  }
}

export const Authenticate = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const validate = await ValidateToken(req);
  if (validate) {
    return next();
  } else {
    return res.status(401).json({ message: "Not authorized" });
  }
};
