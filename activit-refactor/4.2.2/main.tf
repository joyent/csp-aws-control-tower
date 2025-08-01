resource "aws_config_config_rule" "check_iam_user_tags" {
  name = "check-iam-user-tags"
  source {
    owner             = "CUSTOM_LAMBDA"
    source_identifier = aws_lambda_function.iam_tag_checker.arn
  }
  input_parameters = jsonencode({
    requiredTagKey   = "SEC_ASSETS_ACCESS_KEY"
    allowedTagValues = "SERVICE"
  })
  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }
}

resource "aws_lambda_function" "iam_tag_checker" {
  function_name = "iam-user-tag-checker"
  # Add your zip or S3-based function code that checks tags
  runtime       = "python3.9"
  handler       = "index.handler"
  role          = aws_iam_role.config_lambda_role.arn
  # ...
}
