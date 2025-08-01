
resource "aws_iam_role" "flow_logs_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "vpc-flow-logs.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "flow_logs_policy" {
  name   = "${var.role_name}-policy"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = ["s3:PutObject"],
        Resource = "${var.s3_bucket_arn}/AWSLogs/*"
      },
      {
        Effect = "Allow",
        Action = ["s3:GetBucketAcl"],
        Resource = var.s3_bucket_arn
      }
    ]
  })
}
