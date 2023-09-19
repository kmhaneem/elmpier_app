import { User } from "../model/user.model";
import { writeQuery } from "../pg-connection";

export class UserRepository {
  async UserCreate({ email, phone, password, otp, salt, verified }: User) {
    try {
      const sql = `
          INSERT INTO users (
            email, 
            phone, 
            password, 
            salt, 
            firstname, 
            lastname, 
            address, 
            postalcode, 
            verified, 
            otp
          ) VALUES (
            $1, $2, $3, $4, $5, $6, $7, $8, $9, $10
          )
        `;
      const params = [
        email,
        phone,
        password,
        salt,
        "",
        "",
        "",
        "",
        verified,
        otp,
      ];

      const { rowCount } = await writeQuery(sql, params);
      return rowCount;
    } catch (error) {
      console.error("Error in UserCreate:", error);
      throw error;
    }
  }

  async IsUserAlreadyExist({ email, phone }: User) {
    try {
      const result = {
        emailExist: false,
        phoneExist: false,
      };

      const emailSql = "SELECT * FROM users where email = $1";
      const phoneSql = "SELECT * FROM users where phone = $1";

      const emailResult = await writeQuery(emailSql, [email]);
      const phoneResult = await writeQuery(phoneSql, [phone]);

      if (emailResult.rowCount > 0) {
        result.emailExist = true;
      }

      if (phoneResult.rowCount > 0) {
        result.phoneExist = true;
      }

      return result;
    } catch (error) {
      throw error;
    }
  }

  async UserLogin({ email }: User) {
    try {
      const sql = "SELECT * FROM users WHERE email = $1";
      const params = [email];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async UserVerify({ email, verified }: User) {
    try {
      const sql = `UPDATE users SET verified = $1 WHERE email = $2`;
      const params = [verified, email];
      await writeQuery(sql, params);

      const sql1 = "SELECT * FROM users WHERE email = $1";
      const params1 = [email];
      const updatedResult = await writeQuery(sql1, params1);
      return updatedResult;
    } catch (error) {
      throw error;
    }
  }

  async OtpRequest(otp: number, id: number) {
    try {
      const sql = "UPDATE users SET otp = $1 WHERE id = $2 RETURNING *";
      const params = [otp, id];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async UserProfileGet(id: number) {
    try {
      const sql = "SELECT * FROM users WHERE id = $1";
      const params = [id];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {
      throw error;
    }
  }

  async UserProfileUpdate(
    { firstname, lastname, address, postalcode }: User,
    id: number
  ) {
    try {
      const sql =
        "UPDATE users SET firstname = $1, lastname = $2, address = $3, postalcode = $4 WHERE id = $5 RETURNING *";
      const params = [firstname, lastname, address, postalcode, id];
      const result = await writeQuery(sql, params);
      return result;
    } catch (error) {}
  }
}
