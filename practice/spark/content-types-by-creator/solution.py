from pyspark.sql import functions as F



#select content_type from content_items where creator_id < 300 group by content_type

df = spark.read.table("content_items");

l = df.select("content_type")
    .filter(F.col("creator_id") < 300)
    .distinct()


l.show()
