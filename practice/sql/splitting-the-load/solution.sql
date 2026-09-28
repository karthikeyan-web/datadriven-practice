
with cte as ( 
select team_name, concat(svc_name, ' - ', region) as entry_label, sum(amount) as amount, dense_rank() over(partition by team_name order by sum(amount) desc) as rnk from cost_allocs group by amount, team_name , region
order by team_name, amount desc 
)

select team_name, entry_label, amount from cte where rnk <= 3 
