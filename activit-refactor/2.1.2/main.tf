resource "aws_controltower_control" "restrict_root_keys" {
  control_identifier = "8ui9y3oace2513xarz8aqojl7" # RESTRICT_ROOT_USER_ACCESS_KEYS
  target_identifier  = "ou-xxxx-xxxxxxxx"           # Your OU ID
}


resource "aws_organizations_policy" "deny_root_access_keys" {
  name        = "DenyRootAccessKeys"
  description = "Deny access key creation and usage by root user"
  content     = file("${path.module}/scp-deny-root-keys.json")
  type        = "SERVICE_CONTROL_POLICY"
}

resource "aws_organizations_policy_attachment" "attach_scp" {
  policy_id = aws_organizations_policy.deny_root_access_keys.id
  target_id = "ou-xxxx-xxxxxxxx" # Replace with your OU
}
