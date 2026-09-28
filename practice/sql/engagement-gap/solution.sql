select u.username as username, count(t.transaction_id) as transaction_count from users u left join transactions t on u.user_id = t.user_id group by u.username
