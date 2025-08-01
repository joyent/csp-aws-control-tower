About the China AWS Organization
AWS China (Beijing and Ningxia) does not support SCPs or Control Tower, therefore:
You will not be able to use Guardrails or SCPs there.
You will need to monitor manually or with automations using CloudTrail, Config, or scripts..


resource "aws_controltower_control" "restrict_root_keys" {
  control_identifier = "8ui9y3oace2513xarz8aqojl7" # RESTRICT_ROOT_USER_ACCESS_KEYS
  target_identifier  = "ou-xxxx-xxxxxxxx"           # Your OU ID
}
