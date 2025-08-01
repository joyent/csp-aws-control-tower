Guarrails:
AWS Control Tower does not offer Guardrails for custom IAM policy enforcement.

SCPS:
Partially. You can deny policies or access attempts that use Action: "*", but:

    SCPs won’t block policy creation unless tightly scoped.

    SCPs can block attaching overly broad policies (recommended).