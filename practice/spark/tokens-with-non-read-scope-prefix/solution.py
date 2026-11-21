# -- select count(distinct owner_id) as non_read_owner_count from api_tokens 
# -- where scope not like '%read%'




from pyspark.sql import functions as f
from pyspark.sql.functions import col;

df = spark.read.table("api_tokens")

l = (
  df.filter(~f.col("scope").like("%read%"))
    .agg(f.countDistinct("owner_id").alias("non_read_owner_count"))
  )

l.show()
