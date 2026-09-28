
select repo_name, year(built_at) as build_year, avg(dur_secs) as avg_duration from ci_builds group by repo_name, build_year order by avg_duration desc;
