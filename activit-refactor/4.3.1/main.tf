resource "aws_config_config_rule" "mfa_enabled" {
  name = "iam-user-mfa-enabled"
  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_MFA_ENABLED"
  }
}
