select author, count(distinct env_name) as env_count from deploy_logs where lower(status) = 'success'  group by author
