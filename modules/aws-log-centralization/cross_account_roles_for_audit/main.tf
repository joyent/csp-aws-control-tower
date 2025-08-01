
resource "aws_iam_role" "audit_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::${var.audit_account_id}:root"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}
