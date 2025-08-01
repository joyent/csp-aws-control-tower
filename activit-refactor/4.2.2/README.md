To enforce or validate mandatory IAM tags, you can use AWS Config + optional Lambda remediation.

Guarrails:
Guardrails don’t validate IAM tags.

SCPS:
SCPs cannot inspect or enforce tags on IAM users.

Notes:
Alternative Simpler Audit (One-time)
aws iam list-users --query "Users[?Tags[?Key=='SEC_ASSETS_ACCESS_KEY']].UserName"
aws iam list-users --output json | jq -r '.Users[] | select(.Tags==null or all(.Tags[]; .Key != "SEC_ASSETS_ACCESS_KEY")) | .UserName'
