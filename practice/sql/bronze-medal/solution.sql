select distinct amount, dense_rank() over(order by amount desc) as amount from cloud_costs limit 3;
