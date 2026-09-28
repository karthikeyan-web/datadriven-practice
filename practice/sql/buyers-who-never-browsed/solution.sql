-- select u.username, t.total_amount from users u join transactions t on u.user_id = t.user_id 
-- where year(transaction_date) = "2026" and page_views.user_id IS NULL;


SELECT
    u.username,
    t.total_amount
FROM users u
JOIN transactions t ON u.user_id = t.user_id LEFT JOIN page_views pv ON u.user_id = pv.user_id
WHERE YEAR(t.transaction_date) = 2026
  AND pv.user_id IS NULL;
