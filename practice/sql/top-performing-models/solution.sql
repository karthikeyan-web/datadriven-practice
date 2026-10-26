#select * from ml_models where accuracy >= 0.9 order by accuracy desc


from pyspark.sql import Functions as F

df = spark.read.table("ml_models");

result = (
        df.select("*")
          .where(df["accuracy"]>=0.9)
          .orderBy("accuracy",ascending=False)
  
  
  )

result.show();
