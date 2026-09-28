
select svc_name, count(deploy_at) as deloy_count from deploy_logs group by svc_name 
