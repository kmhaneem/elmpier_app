import { User, UserPayload } from "../database/model/user.model";
import { OrdeRepository } from "../database/repository/order-repository";

export class OrderService {
    private repository: OrdeRepository;

    constructor() {
        this.repository = new OrdeRepository();
      }

    async GetOrders(payload: UserPayload){
        try {
            const userId = payload._id
            const result = await this.repository.OrderGet(userId)
            return result
        } catch (error){
            return error
        }
    }
}