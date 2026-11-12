SELECT
  user_id,
  SUM(total_amount) AS total_revenue
FROM transactions
WHERE EXTRACT(MONTH FROM transaction_date) = 3
  AND EXTRACT(YEAR FROM transaction_date) = 2026
GROUP BY user_id
