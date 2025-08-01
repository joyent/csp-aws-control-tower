"Ensure that MFA is enabled for all IAM users (except programmatic-only users with SEC_ASSETS_ACCESS_KEY tag)"o monitor S3 bucket public access and scan for embedded secrets if needed.

Guarrails:
AWS Control Tower has no built-in Guardrail for enforcing MFA on IAM users.

SCPS:
You can require MFA to allow certain actions, using BoolIfExists or aws:MultiFactorAuthPresent. But it won't enforce enabling MFA by itself.