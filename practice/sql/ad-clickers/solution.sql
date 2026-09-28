select u.username, sum(a.revenue) as total_revenue from users u join ad_impressions a on
u.user_id = a.user_id where a.clicked = TRUE group by u.user_id, u.username 
having sum(a.revenue) > 0;
