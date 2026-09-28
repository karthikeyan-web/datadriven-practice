select tbl_name, avg(fail_pct) as avg_fail_pct from dq_checks 
group by tbl_name order by avg_fail_pct asc;
