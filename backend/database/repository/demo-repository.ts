import { writeQuery } from "../pg-connection"

export class DemoRepository {
    async UpdateUser(id: number, name: string, email: string){
        try {
            const sql = "UPDATE demouser SET name = $2, email = $3 WHERE id =$1"
            const params = [id, name, email]
            const result = await writeQuery(sql, params)
            return result.rows
        } catch (error){
            throw error
        }
    }

    async GetUser(id: number){
        try {
            const sql = "SELECT * FROM demouser WHERE id = $1"
            const result = await writeQuery(sql, [id])
            return result.rows
        } catch (error){
            throw error
        }
    }
}