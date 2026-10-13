SELECT
  repo_name,
  SUM(
    CASE
      WHEN LOWER(status) = 'success' THEN 1
      ELSE 0
    END
  ) AS success_count,
  SUM(
    CASE
      WHEN LOWER(status) = 'failure' THEN 1
      ELSE 0
    END
  ) AS failure_count,
  AVG(dur_secs) AS avg_duration
FROM ci_builds
GROUP BY repo_name
