from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("ExerciseSpark").getOrCreate()

df = (
    spark.read.format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", "|")
    .load("s3://edc-igti-data/censo-escolar/")
)


(
    df.write.mode("overwrite")
    .format("parquet")
    .save("s3://edc-igti-data-tf/censo-escolar/staging")
)
