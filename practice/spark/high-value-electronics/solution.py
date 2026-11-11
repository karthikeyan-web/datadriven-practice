# -- SELECT
# --   product_name,
# --   price
# -- FROM products
# -- WHERE in_stock = 1 and lower(category) = 'electronics'
# -- ORDER BY price DESC
# -- limit 5


from pyspark.sql.functions import col;
from pyspark.sql import functions as f

df = spark.read.table("products");


l = (
  
  df.filter(
    (f.col("in_stock")==1) & (f.lower(f.col("category"))=="electronics")
)
  .select("product_name","price")
  .orderBy(f.col("price").desc())
  .limit(5)
   
  )

l.show()
