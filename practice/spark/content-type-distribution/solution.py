from pyspark.sql import functions as f
from pyspark.sql.functions import col;

df = spark.read.table("content_items");

l  = (
  
  df.groupBy("content_type")
  .agg(f.count("*").alias("item_count"))
  
  
  )


l.select("content_type","item_count").show()
