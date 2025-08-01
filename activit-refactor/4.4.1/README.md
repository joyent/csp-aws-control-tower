“Ensure a policy is applied to IAM users to block access to AWS services when MFA is not enabled.”

Guarrails:
AWS Control Tower does not offer Guardrails for subnet/VPC usage restrictions.

SCPS:
SCPs operate at the API level; they cannot enforce architectural topology like subnet/VPC isolation.

Notes:
Denies all access unless the request comes from allowed IP ranges.
Replace CIDRs with your trusted networks.
Ensure CIDR blocks are /24 or larger, as required.

