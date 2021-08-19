resource "aws_s3_bucket_object" "run_emr_steps" {
  bucket = aws_s3_bucket.dl.id
  key    = "emr-code/pyspark/run_emr_steps.py"
  acl    = "private"
  source = "../src/run_emr_steps.py"
  etag   = filemd5("../src/run_emr_steps.py")
}

resource "aws_s3_bucket_object" "raw_to_staging" {
  bucket = aws_s3_bucket.dl.id
  key    = "emr-code/pyspark/raw_to_staging.py"
  acl    = "private"
  source = "../src/raw_to_staging.py"
  etag   = filemd5("../src/raw_to_staging.py")
}