Guarrails:
Control Tower does not provide Guardrails that inspect or restrict the permissions attached to compute service IAM roles.

SCPS:
SCPs can block specific IAM actions (e.g., iam:AttachRolePolicy, iam:PutRolePolicy) when invoked from IAM roles assumed by compute services.