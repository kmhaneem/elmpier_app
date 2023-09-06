import express from "express";

const app = express()

app.use((req, res) => {
    return res.json("hello message")
})

app.listen(3000, () => {
    console.log("App is running on port 3000")
})