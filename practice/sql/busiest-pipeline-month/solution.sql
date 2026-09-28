select month((start_at)) as month, count(*) as pipeline_runs from data_pipes 
group by month(start_at) order by pipeline_runs desc limit 1;
