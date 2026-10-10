from pyspark.sql.functions import min;

#select region, min(amount) as min_cost from cloud_costs group by region;

df = spark.read.table("cloud_costs")
#c = df.select("region", min("amount").alias("min_cost"));
result = df.groupBy("region").agg(
  min("amount").alias("min_cost"));
result.show();
