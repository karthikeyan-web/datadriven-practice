
select d.os_name as os_name, avg(u.session_duration_sec) as avg_duration from devices d join user_sessions u on d.device_id = u.device_id where lower(d.device_type) = 'mobile'  group by os_name order by avg_duration desc limit 1
