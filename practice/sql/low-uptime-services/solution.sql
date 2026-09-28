
select svc_name, checked, uptime from svc_health where uptime < 95 order by uptime, checked;
