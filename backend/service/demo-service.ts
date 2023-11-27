import { DemoRepository } from "../database/repository/demo-repository";

export class DemoService {
    private repository: DemoRepository;

    constructor(){
        this.repository = new DemoRepository()
    }

    async UserUpdate(id: number, name: string, email: string){
        try {
            const response = await this.repository.UpdateUser(id, name, email)
            return response
        } catch (error){
            throw error
        }
    }

    async UserGet(id: number){
        try {
            const response = await this.repository.GetUser(id)
            return response
        } catch (error){
            throw error
        }
    }
}