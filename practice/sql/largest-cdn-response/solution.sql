SELECT *
FROM cdn_logs
WHERE bytes =(SELECT MAX(bytes) FROM cdn_logs)
limit 1
