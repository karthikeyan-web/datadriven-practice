# -- select user_id, sum(total_amount) as total_spent from transactions 
# -- where extract(year from transaction_date) = 2026
# -- group by user_id order by total_spent desc


from pyspark.sql import functions as f
from pyspark.sql.functions import col;

df = spark.read.table("transactions")

l = (
  
    df.filter(year(f.col("transaction_date"))== 2026)
      .groupBy(f.col("user_id"))
      .agg(sum(f.col("total_amount")).alias("total_spent"))
      .orderBy("total_spent",ascending=False)
  
  
  )
l.show();
