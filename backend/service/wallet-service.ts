import { Transaction } from "../database/model/transaction.model";
import { UserPayload } from "../database/model/user.model";
import { Wallet } from "../database/model/wallet.model";
import { WalletRepository } from "../database/repository/wallet-repository";

export class WalletService {
    private repository: WalletRepository

    constructor(){
        this.repository = new WalletRepository()
    }

    async AddAmount(payload: UserPayload, amount: number, transactionInputs: Transaction){
        try {
            const id = payload._id;
            const existingAmount = await this.repository.AmountGet(id)
            const newAmount = existingAmount[0].amount + amount
            const response = await this.repository.AmountAdd(id, newAmount, transactionInputs)
            return response
        } catch (error){
            throw error
        }
    }

    async GetAmount(payload: UserPayload,){
        try {
            const id = payload._id;
            const response = await this.repository.AmountGet(id)
            return response
        } catch (error){
            throw error
        }
    }
}