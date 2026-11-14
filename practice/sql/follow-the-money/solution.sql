select user_id, sum(total_amount) as total_spent from transactions 
where extract(year from transaction_date) = 2026
group by user_id order by total_spent desc
