from pyspark.sql import functions as f
from pyspark.sql.functions import col

df = spark.read.table("k8s_pods");

result = (
        df.select("pod_name")
          .filter(f.col("mem_used").between("100","500"))
          .distinct()
  )

result.show()
