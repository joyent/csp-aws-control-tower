resource "aws_accessanalyzer_analyzer" "least_privilege" {
  name = "least-privilege-org"
  type = "ORGANIZATION"
}
