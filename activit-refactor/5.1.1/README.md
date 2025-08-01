“Ensure a policy is applied to IAM users to block access to AWS services when MFA is not enabled.”

Guarrails:
Guardrails do not support enforcement of EC2 resource tagging.

SCPS:

SCPs cannot enforce presence or value of EC2 instance tags.
Notes:
Compliance Verification
Use AWS Config custom rules or Lambda to:

Check for non-Bastion EC2 instances in bastion subnet
Validate that subnet contains only EC2s tagged as Bastions (SEC_ASSETS_GATEWAY=true)
Optionally alert via CloudWatch/EventBridge.

Audit Script or AWS Config Custom Rule

Verify that:

        SEC_ASSETS_GATEWAY=true is present
        SEC_BASTION_ENVIRONMENT matches VPC/subnet naming
        SEC_BASTION_TYPE is either ssh, db, etc.
        No duplicate roles in a single EC2 instance