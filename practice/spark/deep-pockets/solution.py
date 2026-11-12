# -- SELECT
# --   user_id,
# --   SUM(total_amount) AS total_revenue
# -- FROM transactions
# -- WHERE EXTRACT(MONTH FROM transaction_date) = 3
# --   AND EXTRACT(YEAR FROM transaction_date) = 2026
# -- GROUP BY user_id


from pyspark.sql import functions as f
from pyspark.sql.functions import month, year, col, sum

df = spark.read.table("transactions")

l = (


  df.filter(
    (month(col("transaction_date")) == 3) &
    (year(col("transaction_date"))==2026))
    .groupBy("user_id")
    .agg(sum("total_amount").alias("total_revenue"))


)

l.show()
