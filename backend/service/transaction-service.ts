import axios from "axios";
import { TransactionRepository } from "../database/repository/transaction-repository";
import { CartItem } from "../database/model/cart.model";
import { Transaction } from "../database/model/transaction.model";
import { Order } from "../database/model/order.model";

export class TransactionService {
  private repository: TransactionRepository;

  constructor() {
    this.repository = new TransactionRepository();
  }

  async transactionCreate(transactionInputs: Transaction, orderInputs: Order) {
    try {
      const result = await this.repository.createTransaction(
        transactionInputs,
        orderInputs
      );

      return result;
    } catch (error) {
      throw error;
    }
  }
}
