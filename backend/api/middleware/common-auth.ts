import { Request, Response, NextFunction } from "express";
import { UserPayload } from "../../database/model/user.model";
import { ValidateToken } from "../../utils/password-utils";
import { AdminPayload } from "../../database/model/admin.model";

declare global {
  namespace Express {
    interface Request {
      user?: UserPayload;
    }
  }
}

declare global {
  namespace Express {
    interface Request {
      admin?: AdminPayload;
    }
  }
}

export const OptionalAuthenticate = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const validate = await ValidateToken(req);
  if (validate) {
    return next();
  } else {
    req.user = undefined;  
    return next();  
  }
};




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

