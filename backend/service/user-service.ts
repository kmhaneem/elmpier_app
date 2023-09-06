import { User } from "../database/model/User.model";

class UserService {
  repository: UserService;
  constructor() {
    this.repository = new UserService();
  }

  async SignUp(userInputs: User) {
    try {
      const { email, password, phone } = userInputs;

    } catch {}
  }
}
