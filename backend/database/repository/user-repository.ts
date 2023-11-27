import { User, UserAddress } from "../model/user.model";
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
            verified, 
            otp
          ) VALUES (
            $1, $2, $3, $4, $5, $6, $7, $8
          ) RETURNING id
        `;
      const params = [email, phone, password, salt, "", "", verified, otp];

      const result = await writeQuery(sql, params);

      if (result.rows && result.rows.length > 0) {
        const userId = result.rows[0].id;
        const sql1 = `INSERT INTO user_address (user_id) VALUES ($1)`;
        await writeQuery(sql1, [userId]);
        const walletSql =
          "INSERT INTO wallet (user_id, amount) values ($1, $2)";
        await writeQuery(walletSql, [userId, 0]);
      }

      return result;
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
      const sql = `
            SELECT u.*, ua.* FROM users u
            LEFT JOIN user_address ua ON u.id = ua.user_id
            WHERE u.id = $1
        `;
      const params = [id];
      const result = await writeQuery(sql, params);
      if (result.rows && result.rows.length) {
        return result;
      }
      throw new Error("User not found");
    } catch (error) {
      throw error;
    }
  }

  async UserProfileUpdate(
    id: number,
    {
      firstName,
      lastName,
      addressLine1,
      addressLine2,
      city,
      postalCode,
      district,
      province,
    }: UserAddress
  ) {
    try {
      const userSql =
        "UPDATE users SET firstname = $1, lastname = $2 WHERE id = $3 RETURNING *";
      const userParams = [firstName, lastName, id];
      await writeQuery(userSql, userParams);

      const addressSql =
        "UPDATE user_address SET address_line_1 = $1, address_line_2 = $2, city = $3, postal_code = $4, district = $5, province = $6 WHERE user_id = $7 RETURNING *";
      const addressParams = [
        addressLine1,
        addressLine2,
        city,
        postalCode,
        district,
        province,
        id,
      ];
      await writeQuery(addressSql, addressParams);

      const selectSql = `
    SELECT 
        u.firstname,
        u.lastname,
        a.address_line_1,
        a.address_line_2,
        a.city,
        a.postal_code,
        a.district,
        a.province
    FROM users u
    JOIN user_address a ON u.id = a.user_id
    WHERE u.id = $1
`;
      const result = await writeQuery(selectSql, [id]);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async ProvinceGet() {
    try {
      const sql = "SELECT * FROM province";
      const result = await writeQuery(sql, []);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }

  async DistrictGet() {
    try {
      const sql = "SELECT * FROM district";
      const result = await writeQuery(sql, []);
      return result.rows;
    } catch (error) {
      throw error;
    }
  }
}
