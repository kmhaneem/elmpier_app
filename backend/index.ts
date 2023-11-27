import express from "express";
import pool from "./database/pg-connection";
import userRoutes from "./api/user-api";
import productRoutes from "./api/product-api";
import adminRoutes from "./api/admin-api"
import cartRoutes from "./api/cart-api";
import transactionRoutes from "./api/transaction-api";
import orderRoutes from "./api/order-api"
import advertisementRoutes from "./api/advertisement-api"
import adsRoute from "./api/ads-api"
import ePlusRoute from "./api/elmpierplus-api"
import walletRoute from "./api/wallet-api"
import deliveryPersonRoute from "./api/deliveryp_api"
import demoRoute from "./api/demo-api"
import { UserService } from "./service/user-service";
import { ProductService } from "./service/product-service";

const app = express();
const userService = new UserService();
const productService = new ProductService();
app.use(express.json());

demoRoute(app)
deliveryPersonRoute(app)
walletRoute(app)
ePlusRoute(app)
adsRoute(app)
advertisementRoutes(app)
orderRoutes(app)
transactionRoutes(app);
userRoutes(app, userService);
productRoutes(app);

adminRoutes(app);
cartRoutes(app);

app.use((req, res) => {
  pool.query("SELECT NOW()", (err, result) => {
    if (err) {
      return res.status(500).json({ error: "Database connection failed" });
    }
    return res.json({
      message: "Hello message",
      currentTime: result.rows[0].now,
    });
  });
});

app.listen(3000, () => {
  console.log("App is running on port 3000");
});
