select u.username as username, u.signup_date as signup_date from users u left join search_queries s on u.user_id = s.user_id where s.query_id is null group by u.username
