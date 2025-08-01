This doesn’t enforce who has the key — but helps flag stale or misused keys.

Guarrails:
No AWS Control Tower Guardrail supports this IAM access key best practice.

SCPS:
SCPs cannot restrict access key creation or limit dual-purpose usage at the IAM user level.

Notes:
se IAM Roles for programmatic access instead of users with access keys	Enforce with internal policy + automation
