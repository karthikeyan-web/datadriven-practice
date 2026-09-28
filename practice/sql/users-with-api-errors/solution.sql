select count(distinct u.user_id) as users_with_errors from users u join api_calls a on u.user_id = a.user_id where a.status >= 400;
