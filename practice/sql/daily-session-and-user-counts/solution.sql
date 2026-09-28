select to_char(session_start, 'YYYY-MM-DD') as session_date, count(*) as total_sessions, count(distinct user_id ) as unique_users from user_sessions group by session_date
