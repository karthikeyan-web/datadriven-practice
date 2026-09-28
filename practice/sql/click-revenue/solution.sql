SELECT
  ad_campaign,
  SUM(revenue) AS click_revenue
FROM ad_impressions
WHERE clicked = 1
GROUP BY ad_campaign
having sum(revenue) > 5
order by click_revenue desc;
