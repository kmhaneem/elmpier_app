import { Request, Response, NextFunction } from "express";
import { UserPayload } from "../../database/model/user.model";
import { ValidatDeliveryPersonToken, ValidateToken } from "../../utils/password-utils";
import { AdminPayload } from "../../database/model/admin.model";
import { DeliveryPersonPayload } from "../../database/model/deliveryp.model";

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

declare global {
  namespace Express {
    interface Request {
      delivery?: DeliveryPersonPayload;
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

export const AdminAuthenticate = async (
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

export const DeliveryPersonAuthenticate = async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const validate = await ValidatDeliveryPersonToken(req);
  if (validate) {
    return next();
  } else {
    return res.status(401).json({ message: "Not authorized" });
  }
};

