from pyspark.sql.functions import col,to_date, month, dayofmonth, countDistinct

df = spark.read.table("user_sessions");

l = (
df.withColumn("day",to_date(col('session_start'))) 
    .groupBy("day") 
    .agg(countDistinct("user_id").alias("dau"))
)    
l.show();
