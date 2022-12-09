import express from "express";
import morgan from "morgan";

//import routes
import { expensesRouter } from "./Routes/expenses.js";

import cors from "cors";

export const app = express();

app.use(cors());
app.use(morgan("dev"));
//read static files
app.use(express.static("public"));
app.use(express.json());

//middleware for routes
app.use("/api/expenses", expensesRouter);

// app.listen(PORT, function (){
//     console.log(`Server is running on port ${PORT}`)
// });
