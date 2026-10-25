SELECT
  u.user_id,
  u.username,
  u.email,
  a.token_id,
  a.scope
FROM users AS u
JOIN api_tokens AS a
  ON u.user_id = a.owner_id
  
 where a.scope like "%admin%"
 order by user_id asc;
