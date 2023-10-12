import * as cloudinary from 'cloudinary';
import dotenv from "dotenv";
import path from "path";
dotenv.config({ path: path.resolve(__dirname, "../config/.env") });

cloudinary.v2.config({
    cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
    api_key: process.env.CLOUDINARY_API_KEY,
    api_secret: process.env.CLOUDINARY_API_SECRET
})

export default cloudinary;