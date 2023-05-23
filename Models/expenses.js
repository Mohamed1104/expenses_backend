import query from "../db/index.js";

export async function getAllExpenses() {
  const result = await query("SELECT * FROM expenses");
  const expenses = result.rows;
  return expenses;
}

export async function createExpense(expenses) {
  const { category, expense, price, date } = expenses;
  const result = await query(
    `INSERT INTO expenses (expense, price, date) VALUES ($1, $2, $3, $4) RETURNING *`,
    [category, expense, price, date]
  );
  return result.rows;
}
