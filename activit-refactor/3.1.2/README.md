Guarrails:
AWS Control Tower does not provide Guardrails for detecting or restricting who has permission-management capabilities.

SCPS:
Yes — partially and effectively.
SCPs can:

    Deny sensitive IAM actions for all principals except allowed roles.

    Prevent unauthorized permission grants or role creation.