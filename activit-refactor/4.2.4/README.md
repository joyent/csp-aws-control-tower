
Use the AWS Config managed rule:
iam-user-no-more-than-one-access-key

Guarrails:
No AWS Control Tower Guardrail enforces access key limits.

SCPS:
SCPs do not have visibility into the number of access keys per user.

Notes:
Behavior

Compliant: 1 or 0 active access keys per IAM user
Non-Compliant: 2+ keys (even if temporarily)

If you want to allow two keys during rotation, you'd need to:
Use this rule only to alert, not to auto-remediate.
Optionally, build an exception list or time-bound check using custom Lambda or external tool like AWS Security Hub.