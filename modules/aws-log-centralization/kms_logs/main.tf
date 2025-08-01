
resource "aws_kms_key" "logs" {
  description = "KMS key for centralized logs"
  enable_key_rotation = true
}

resource "aws_kms_alias" "logs" {
  name          = var.alias
  target_key_id = aws_kms_key.logs.key_id
}
