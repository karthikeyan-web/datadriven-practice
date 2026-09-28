select d.device_type, count( distinct u.user_id) as user_count from devices d join user_sessions u on d.device_id = u.device_id group by d.device_type;
