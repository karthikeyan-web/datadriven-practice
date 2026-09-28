select deploy_at::date as deploy_date, count(*) as deploy_count from deploy_logs group by deploy_date
