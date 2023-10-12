import { Admin } from "../model/admin.model";
import { writeQuery } from "../pg-connection";

export class AdminRepository {
    async AdminCreate({name, email, password, salt}: Admin){
        try {
            const sql = "INSERT INTO admin (name, email, password, salt) VALUES ($1, $2, $3, $4)";
            const params = [name, email, password, salt]
            const result = await writeQuery(sql, params)
            return result.rowCount
        } catch (error){
            throw error
        }
    }

    async AdminLogin({email}: Admin){
        try {
            const sql = "SELECT * FROM admin WHERE email = $1"
            const params = [email]
            const result = await writeQuery(sql, params)
            return result
        } catch (error){
            throw error
        }
    }
}