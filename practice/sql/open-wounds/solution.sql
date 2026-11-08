WITH cte AS (
  SELECT
    svc_name,
    alert_id,
    severity,
    status,
    fired_at,
    ROW_NUMBER() OVER (
      PARTITION BY svc_name
      ORDER BY fired_at
    ) AS rnk
  FROM alert_events
  WHERE resolved IS NULL
)

SELECT
  svc_name,
  alert_id,
  severity,
  status,
  fired_at
FROM cte
WHERE rnk = 1
ORDER BY svc_name asc
