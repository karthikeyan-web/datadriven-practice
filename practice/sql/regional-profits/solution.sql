SELECT
  region,
  SUM(profit) AS total_profit,
  COUNT(*) AS order_count
FROM orders where region is not null
GROUP BY region
order by total_profit desc
