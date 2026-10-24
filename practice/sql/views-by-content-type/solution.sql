# -- SELECT
# --   c.content_type AS content_type,
# --   COUNT(v.viewed_at) AS view_count
# -- FROM content_views v
# -- JOIN content_items c on v.content_id = c.content_id
# -- group by content_type


from pyspark.sql import functions  as f

a = spark.read.table("content_views");
b = spark.read.table("content_items");

result = (
      a.join(b,on="content_id",how="inner")
      .groupBy("content_type")
      .agg(f.count("viewed_at").alias("view_count"))
      
  
  
  )

result.show();
