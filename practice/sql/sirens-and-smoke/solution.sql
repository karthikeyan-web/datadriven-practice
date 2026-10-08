SELECT
  *
FROM alert_events
WHERE extract (year from fired_at) = 2026
AND LOWER(severity) IN ('high', 'critical')
