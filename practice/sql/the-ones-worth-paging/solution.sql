select log_level, count(*) as total_count from server_logs where upper(log_level) in ('CRITICAL','ERROR','WARN') group by log_level;
