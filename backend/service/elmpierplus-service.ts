import { Transaction } from "../database/model/transaction.model";
import { UserPayload } from "../database/model/user.model";
import { ElmpierPlusRepository } from "../database/repository/elmpierplus-repository";

export class ElmpierPlusService {
    private repository: ElmpierPlusRepository;

    constructor(){
        this.repository = new ElmpierPlusRepository();
    }

    async CreateEPlus(payload: UserPayload, transactionInputs: Transaction,){
        try {
            const id = payload._id;
            const response = await this.repository.EPlusCreate(id, transactionInputs)
            return response
        } catch (error){
            throw error
        }
    }

    async CheckEPlus(payload: UserPayload){
        try {
            const id = payload._id;
            const response = await this.repository.EPlusCheck(id)
            return response
        } catch (error){
            throw error
        }
    }
}