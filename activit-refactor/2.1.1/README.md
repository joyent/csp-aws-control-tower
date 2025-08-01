AWS Control Tower has root-specific managed Guardrails that prevent root actions, control access key creation, and require MFA.

Guardrails: (Disallow actions as a root user) 5kvme4m5d2b4d7if2fs5yg2ui (Disallow creation of access keys for root) 8ui9y3oace2513xarz8aqojl7 (Require MFA for the root account) 24izmu4k16gv9tvd7sexnyrfy

SCPS: Create a custom SCP that blocks actions performed by the root user based on a Condition such as:
