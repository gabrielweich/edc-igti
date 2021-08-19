resource "aws_lambda_function" "run_emr" {
  filename      = "run_emr_steps_payload.zip"
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda.arn
  handler       = "run_emr_steps.handler"
  memory_size   = 128
  timeout       = 30

  source_code_hash = filebase64sha256("run_emr_steps_payload.zip")

  runtime = "python3.8"

  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }

}