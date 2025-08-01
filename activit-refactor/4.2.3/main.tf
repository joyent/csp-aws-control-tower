resource "aws_config_config_rule" "access_keys_rotated" {
  name = "access-keys-rotated"
  source {
    owner             = "AWS"
    source_identifier = "ACCESS_KEYS_ROTATED"
  }

  input_parameters = jsonencode({
    maxAccessKeyAge = 90
  })

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }
}
