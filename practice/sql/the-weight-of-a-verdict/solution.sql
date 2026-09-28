select *,sum(rows_in) over(partition by status) as status_total_rows_in from data_pipes group by pipe_id 
