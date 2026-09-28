select count(distinct username) as active_users_with_transactions from users u join transactions t on u.user_id = t.user_id 
where account_status IN ('active') and transaction_date between '2026-04-01' and '2026-04-30'
