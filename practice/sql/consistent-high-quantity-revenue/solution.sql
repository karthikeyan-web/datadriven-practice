
select user_id, product_id, sum(total_amount) as total_revenue from transactions group by user_id,product_id having(min(quantity)) >= 2 order by total_revenue desc;
