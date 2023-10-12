import { Admin } from "../database/model/admin.model";
import { AdminRepository } from "../database/repository/admin-repository";
import { GeneratePassword, GenerateSalt, GenerateToken, GenerateTokenAdmin, ValidatePassword } from "../utils/password-utils";

export class AdminService {
    private repository: AdminRepository;

    constructor(){
        this.repository = new AdminRepository()
    }

    async CreateAdmin(adminInput: Admin){
        try {
            const salt = await GenerateSalt();
            const hashedPassword = await GeneratePassword(adminInput.password, salt);
            adminInput.password = hashedPassword;
            adminInput.salt = salt;

            const token = await GenerateTokenAdmin({
                _id: adminInput.id,
                email: adminInput.email,
              });

              const rowCount = await this.repository.AdminCreate(adminInput);
              if (!rowCount) {
                return "Admin creation failed";
              }
              return {
                message: "Admin Created Successfully",
                token,
                email: adminInput.email,
              };
        } catch (error){
            throw error
        }
    }

    async LoginAdmin(adminInput: Admin){
        try {
            const result = await this.repository.AdminLogin(adminInput);
            if (!result) {
                return "Admin login failed";
              }
            const admin = result.rows[0];
            const validation = await ValidatePassword(
                adminInput.password,
                admin.password,
                admin.salt
              );
        
              if (!validation) {
                return "Password does not match";
              }
            const token = await GenerateTokenAdmin({
                _id: admin.id,
                email: admin.email
              });
            return {
                message: "Admin Login Successfully",
                token,
              };
        } catch (error){
            throw error
        }
    }
}