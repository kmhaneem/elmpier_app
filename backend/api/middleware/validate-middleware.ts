import { validate } from "class-validator";
import { plainToInstance } from "class-transformer";
import { Request, Response, NextFunction } from "express";
import { BadRequestError } from "../../utils/app-errors";

export const validationMiddleware = (dtoClass: any) => {
  return function (req: Request, res: Response, next: NextFunction) {
    const output: any = plainToInstance(dtoClass, req.body);
    validate(output, { skipMissingProperties: true }).then((errors) => {
      if (errors.length > 0) {
        console.log(errors);
        let errorTexts = Array();
        for (const errorItem of errors) {
          errorTexts = errorTexts.concat(errorItem.constraints);
        }
        res
          .status(400)
          .send(new BadRequestError("Validation Error", errorTexts));
        return;
      } else {
        res.locals.input = output;
        next();
      }
    });
  };
};
