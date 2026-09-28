SELECT
  user_id,
  SUM(total_amount) AS lifetime_spend,
  COUNT(transaction_id) AS tx_count
FROM transactions
GROUP BY user_id
having sum(total_amount) > 500
ORDER BY lifetime_spend DESC
