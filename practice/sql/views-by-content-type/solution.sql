SELECT
  c.content_type AS content_type,
  COUNT(v.viewed_at) AS view_count
FROM content_views v
JOIN content_items c on v.content_id = c.content_id
group by content_type
