from pyspark.sql.functions import col;

#select distinct metric_value from employee_metrics order by metric_value desc limit 5



df = spark.read.table("employee_metrics");

result = (df.select("metric_value")
            .distinct()
            .orderBy("metric_value",ascending=False)
            .limit(5)
            
    
)

result.show()
