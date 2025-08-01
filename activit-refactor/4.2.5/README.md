Recommended Solution
1. Enable AWS Secrets Detection with Amazon Macie or Amazon CodeGuru Reviewer (if using source code repos)
Detect secrets in S3 buckets, Git repositories, or shared folders.

2. Set up automated scanning using Amazon Macie for S3
Macie can detect sensitive information like Access Keys or Secrets stored in S3.

3. Use AWS Config custom rule or Lambda function to monitor S3 bucket public access and scan for embedded secrets if needed.

Guarrails:
Control Tower Guardrails do not validate access key storage or sharing behavior.

SCPS:
SCPs operate on API-level restrictions, not on how secrets are stored.

Notes:
What is Amazon Macie?
https://docs.aws.amazon.com/macie/latest/user/what-is-macie.html