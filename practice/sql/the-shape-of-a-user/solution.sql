
-- select user_id, 
-- sum(
-- case when event_type = 'search' then 1
--  else 0
-- end 
-- ) as search,
-- sum(
-- case when event_type = 'add_to_card' then 1 
-- else 0 
-- end
-- ) as add_to_cards,
-- sum(
-- case when event_type = 'purchase' then 1 
-- else 0
-- end
--   ) as purchases
-- from event_data
-- group by user_id

SELECT
  user_id,
  SUM(
    CASE
      WHEN event_type = 'search' THEN 1
      ELSE 0
    END
    ) AS searches,
  SUM(
    CASE
      WHEN event_type = 'add_to_cart' THEN 1
      ELSE 0
    END
    ) AS add_to_carts,
  SUM(
    CASE
      WHEN event_type = 'purchase' THEN 1
      ELSE 0
    END
    ) AS purchases
FROM event_data
GROUP BY user_id
