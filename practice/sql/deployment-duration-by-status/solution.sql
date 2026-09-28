select svc_name, status, sum(dur_secs) as total_duration from deploy_logs group by svc_name,status order by svc_name asc;
