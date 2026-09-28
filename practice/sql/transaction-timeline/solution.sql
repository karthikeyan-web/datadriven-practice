select u.username, min(t.transaction_date) as first_purchase, max(t.transaction_date) as latest_purchase,  
sum(total_amount) as lifetime_spend from users u join transactions t on u.user_id = t.user_id
group by u.username order by first_purchase asc;
