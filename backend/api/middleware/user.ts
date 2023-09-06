import { plainToInstance } from "class-transformer";
import { Application, Request, Response, NextFunction } from "express"
import { User } from "../../database/model/User.model";
import { validate } from "class-validator";

export default (app: Application) =>  {
    app.post("/user/signup", async (req: Request, res: Response, next: NextFunction) => {
        const userInputs = plainToInstance(User, req.body)
        // const inputErrors = await validate(userInputs, {
        //     validationError: { target: true },
        //   });
      
        //   if (inputErrors.length > 0) {
        //     const errorMessages = inputErrors
        //       .map((error) => Object.values(error.constraints))
        //       .flat();
        //     return res.status(400).json({ message: errorMessages });
        //   }
        const {email, phone, password} = userInputs;
    })
}