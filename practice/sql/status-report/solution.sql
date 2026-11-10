SELECT
  status,
  COUNT(*) AS order_count,
  AVG(profit) AS avg_profit
FROM orders
where region is not null and status is not null
GROUP BY status
having count(*) >= 24
order by avg_profit desc
