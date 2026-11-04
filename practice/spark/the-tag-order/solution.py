# from pyspark.sql import functions as f
# from pyspark.sql.functions import col

# df = spark.read.table("deploy_logs");

# l = (
#     df.select("log_id",f.lower(f.col("env_name")).alias("env_name"))
#       .filter(f.lower(f.col("env_name")=='failed'))
  
#   )

# l.show()


from pyspark.sql import functions as f
df = spark.read.table("deploy_logs");
l = (
  df.select(
    "log_id",
    f.lower(f.col("env_name")).alias("env_name")
  )
  .filter(f.lower(f.col("status")) == "failed")
)

l.show()
