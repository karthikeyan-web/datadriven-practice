


select job_name, sum(rows_done) as total_rows,
case
when sum(rows_done) >= 30000 then 'Outstanding'
 when sum(rows_done) <= 29999 and sum(rows_done) >= 20000 then 'Satisfactory'
  when sum(rows_done) <= 19999 and sum(rows_done) >= 10000 then 'Unsatisfactory'
  else 'Poor'
  end as performance_tier
  
  from batch_jobs
  group by job_name
  order by total_rows desc
