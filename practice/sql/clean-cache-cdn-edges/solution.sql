from pyspark.sql.functions import col
#select distinct req_path from cdn_logs where status > 400 




df = spark.read.table("cdn_logs");

l = df.select("req_path")\
    .where(col("status") > 400) \
    .distinct();
    
l.show();
