select svc_name, version from deploy_logs group by svc_name order by deploy_at desc;
