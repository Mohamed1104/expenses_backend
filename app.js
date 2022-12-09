import express from "express";
import morgan from "morgan";
import cors from "cors";

//import routes
import { expensesRouter } from "./Routes/expenses.js";


export const app = express();

app.use(cors());
app.use(morgan("dev"));
//read static files
// app.use(express.static("public"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
//middleware for routes
app.use("/api/expenses", expensesRouter);

const PORT = process.env.PORT || 3000
app.listen(PORT, function (){
    console.log(`Server is running on port ${PORT}`)
});
