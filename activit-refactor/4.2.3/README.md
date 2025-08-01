This rule checks whether IAM access keys are rotated within the last 90 days.

Guarrails:
Guardrails cannot enforce key rotation or age-based policies.

SCPS:
SCPs do not inspect IAM credential age.

Notes:
 How it works

    Evaluates each IAM user's access keys.

    Flags any access key older than maxAccessKeyAge (in this case, 90 days).

    No auto-remediation — but you can attach a Lambda for automatic key deactivation if needed.