select status, avg(latency) as avg_latency from api_calls group by status
