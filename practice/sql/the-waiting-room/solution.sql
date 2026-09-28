

select u.user_id, u.username, u.email, u.signup_date, u.account_status, u.age_bucket 
from users u left join user_sessions us on u.user_id = us.user_id
and us.session_start >= '2026-03-01' 
where account_status = 'pending_verification' and us.session_id is NULL;
