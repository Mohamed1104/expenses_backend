import { Router } from "express";
import { getAllExpenses, createExpense
 } from "../Models/expenses.js";
export const expensesRouter = Router();

expensesRouter.get("/", async function (req, res) {
  const expensesArr = await getAllExpenses();
  res.json({ success: true, payload: expensesArr });
});

expensesRouter.post("/", async function (req, res) {
  const data = req.body;
  const newExpense = await createExpense(data);
  res.json({ success: true, payload: newExpense });
});
