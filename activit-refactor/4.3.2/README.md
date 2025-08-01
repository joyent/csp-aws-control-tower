Use an IAM policy with Condition + aws:SourceIp to restrict access by IP for:

    IAM Users (console/programmatic)

    IAM Roles (esp. OIDC or SAML)

Guarrails:
No Guardrail available to restrict by IP range.

SCPS:
SCPs can restrict source IP addresses globally, but cannot selectively allow based on user or role, or apply different IPs per principal.

Notes:
This policy blocks all access unless the user logs in with MFA, but allows managing their own MFA.