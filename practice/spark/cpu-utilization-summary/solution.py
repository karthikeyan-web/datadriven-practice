from pyspark.sql.functions import col

#select min(cpu_pct) as min_cpu, avg(cpu_pct) as avg_cpu, max(cpu_pct) as max_cpu from infra_nodes 

df = spark.read.table("infra_nodes");

l = df.agg(
  (min("cpu_pct").alias("min_cpu")),
    (avg("cpu_pct").alias("avg_cpu")),
    (max("cpu_pct").alias("max_cpu"))
  
  )

l.show();
