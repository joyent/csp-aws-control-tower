resource "aws_config_config_rule" "only_one_access_key" {
  name = "iam-user-no-more-than-one-access-key"
  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_NO_MORE_THAN_ONE_ACCESS_KEY"
  }

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }
}
