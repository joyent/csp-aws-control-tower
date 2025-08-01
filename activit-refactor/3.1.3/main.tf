
#Create an analyzer to detect via Terraform
#You’ll be able to detect:
# - Policies granting admin access (*:*)
# - Resources exposed to broad access
resource "aws_accessanalyzer_analyzer" "admin_check" {
  name = "admin-policy-check"
  type = "ACCOUNT"
}


#Use custom rule or managed rule iam-policy-no-statements-with-admin-access
resource "aws_config_config_rule" "no_admin_policy" {
  name = "iam-no-admin-policy"
  source {
    owner             = "AWS"
    source_identifier = "IAM_POLICY_NO_STATEMENTS_WITH_ADMIN_ACCESS"
  }
}
