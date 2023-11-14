import multer from "multer";

const storage = multer.memoryStorage();
export const productUpload = multer({ storage }).array("images", 6);
