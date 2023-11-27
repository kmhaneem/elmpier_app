import axios from "axios";
import { User, UserAddress, UserPayload } from "../database/model/user.model";
import { UserRepository } from "../database/repository/user-repository";
import {
  GeneratePassword,
  GenerateSalt,
  GenerateToken,
  ValidatePassword,
} from "../utils/password-utils";
import dotenv from "dotenv";
import path from "path";
dotenv.config({ path: path.resolve(__dirname, "../config/.env") });

export class UserService {
  private repository: UserRepository;

  constructor() {
    this.repository = new UserRepository();
  }

  async CreateUser(userInputs: User) {
    try {
      const { emailExist, phoneExist } =
        await this.repository.IsUserAlreadyExist(userInputs);
      if (emailExist || phoneExist) {
        let message = "User already exists with this ";
        if (emailExist && phoneExist) {
          message += "email and phone number";
        } else if (emailExist) {
          message += "email";
        } else if (phoneExist) {
          message += "phone";
        }
        throw new Error(message);
      }

      const formatPhoneNumber = (userInputNumber) => {
        if (userInputNumber.startsWith("0")) {
          return "94" + userInputNumber.substring(1);
        }
        return userInputNumber;
      };

      let formattedNumber = formatPhoneNumber(userInputs.phone);
      const generateOTP = () => {
        const otp = Math.floor(100000 + Math.random() * 900000);
        return otp.toString();
      };

      let otp = generateOTP();

      let convOtp = parseInt(otp);
      const salt = await GenerateSalt();
      const hashedPassword = await GeneratePassword(userInputs.password, salt);
      userInputs.password = hashedPassword;
      userInputs.otp = convOtp;
      userInputs.salt = salt;
      userInputs.verified = false;
      userInputs.phone = formattedNumber;

      const token = await GenerateToken({
        _id: userInputs.id,
        email: userInputs.email,
        verified: userInputs.verified,
      });
      const rowCount = await this.repository.UserCreate(userInputs);
      if (!rowCount) {
        throw new Error("User creation failed");
      }

      const userId = rowCount.rows[0];

      const USER_ID = process.env.NOTIFY_USER_ID;
      const API_KEY = process.env.NOTIFY_API_KEY;
      const SENDER_ID = process.env.NOTIFY_SENDER_ID;

      let message = `Hello! Your One-Time Password (OTP) for verifying your ELMPIER account is: ${otp}`;

      try {
        await axios.get(`https://app.notify.lk/api/v1/send`, {
          params: {
            user_id: USER_ID,
            api_key: API_KEY,
            sender_id: SENDER_ID,
            to: formattedNumber,
            message: message,
          },
        });
        console.log("SENT MESSAGE: ", message);
        console.log(`Message successfully sent to: ${formattedNumber}`);
      } catch (error) {
        console.error(`Failed to send message to: ${formattedNumber}`);

        console.error("Error Message:", error.message);

        if (error.response) {
          console.error("Response Data:", error.response.data);
          console.error("Response Status:", error.response.status);
          console.error("Response Headers:", error.response.headers);
        }
      }

      return {
        id: userId.id,
        message: "User Created Successfully",
        token,
        email: userInputs.email,
        verified: userInputs.verified,
      };
    } catch (error) {
      throw error;
    }
  }

  async LoginUser(userInputs: User) {
    try {
      const result = await this.repository.UserLogin(userInputs);
      if (!result) {
        return "User login failed";
      }
      if (result.rowCount === 0) {
        throw new Error("User Not Found");
      }

      const user = result.rows[0];
      const validation = await ValidatePassword(
        userInputs.password,
        user.password,
        user.salt
      );

      if (!validation) {
        throw new Error("Password does not match");
      }

      userInputs.verified = user.verified;
      const token = await GenerateToken({
        _id: user.id,
        email: user.email,
        verified: user.verified,
      });
      return {
        id: user.id,
        email: user.email,
        message: "User Login Successfully",
        token,
        verified: user.verified,
      };
    } catch (error) {
      throw error;
    }
  }

  async VerifyUser(userInputs: User, currentUser: UserPayload) {
    try {
      userInputs.email = currentUser.email;
      const user = await this.repository.UserLogin(userInputs);
      if (userInputs.otp !== user.rows[0].otp) {
        throw new Error("Invalid OTP");
      }

      if (user.rows[0].verified === true) {
        throw new Error("You have already verified");
      }
      userInputs.verified = true;
      const result = await this.repository.UserVerify(userInputs);
      const updatedResult = result.rows[0];
      const token = await GenerateToken({
        _id: updatedResult.id,
        email: updatedResult.email,
        verified: updatedResult.verified,
      });
      return {
        id: updatedResult.id,
        message: "OTP verified successfully",
        token,
        email: updatedResult.email,
        verified: updatedResult.verified,
      };
    } catch (error) {
      throw error;
    }
  }

  async RequestOtp(currentUser: UserPayload) {
    try {
      const otp = 456456;
      const id = currentUser._id;
      const result = await this.repository.OtpRequest(otp, id);
      console.log(result.rows[0].otp);
      return {
        message: "OTP has been send successfully",
        otp: result.rows[0].otp,
      };
    } catch (error) {
      throw error;
    }
  }

  async GetUserProfile(currentUser: UserPayload) {
    try {
      const userId = currentUser._id;
      const result = await this.repository.UserProfileGet(userId);
      const { id, password, salt, verified, otp, user_id, ...userInfo } =
        result.rows[0];
      return userInfo;
    } catch (error) {
      throw error;
    }
  }

  async UpdateUserProfile(currentUser: UserPayload, userInputs: UserAddress) {
    try {
      const userId = currentUser._id;
      const result = await this.repository.UserProfileUpdate(
        userId,
        userInputs
      );

      return result;
    } catch (error) {
      throw error;
    }
  }

  async GetProvince() {
    try {
      const result = await this.repository.ProvinceGet();
      return result;
    } catch (error) {
      throw error;
    }
  }

  async GetDistrict() {
    try {
      const result = await this.repository.DistrictGet();
      return result;
    } catch (error) {
      throw error;
    }
  }
}
