from pyspark.sql.functions import col;


#select distinct category from products;

df = spark.read.table("products")

l = (
  df.select("category")
    .distinct()
  
  )


l.show();
