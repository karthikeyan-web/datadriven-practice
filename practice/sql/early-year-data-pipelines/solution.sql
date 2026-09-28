select distinct pipe_name from data_pipes where format(start_at,'yyyy-mm') between '2026-01' and '2026-06' group by pipe_name
