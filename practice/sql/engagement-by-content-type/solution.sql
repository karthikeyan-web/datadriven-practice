SELECT
  content_type,
  coalesce(SUM(duration_seconds),0) AS total_duration,
  COUNT(*) AS item_count
FROM content_items
GROUP BY content_type
ORDER BY total_duration DESC
