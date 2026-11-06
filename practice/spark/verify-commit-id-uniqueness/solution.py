# -- select count(*) as total_commits, count(distinct trim(lower(author))) as distinct_authors from repo_commits

from pyspark.sql import functions as f
from pyspark.sql.functions import col;

df = spark.read.table("repo_commits");

l = (
  
 df.agg(f.count("*").alias("total_commits"), f.countDistinct(f.trim(f.lower("author"))).alias("distinct_authors"))
  
  )

l.show()
