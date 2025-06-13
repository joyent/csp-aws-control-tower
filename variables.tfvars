# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# AWS Control Tower Controls (sometimes called Guardrails) Example Configuration

# Organizational Units IDs

# ou-mdk9-0v7d92zd	Suspended
# ou-mdk9-3hzq0utb	Policy Staging
# ou-mdk9-745mq3fy	Sandbox
# ou-mdk9-89ns8e3r	Deployments
# ou-mdk9-h4yxc4yl	  Development
# ou-mdk9-jvj1ulg5	  Staging
# ou-mdk9-vdjs7ymb	  Production
# ou-mdk9-edi88i4x	Workloads
# ou-mdk9-9o8kdv6h	  Production
# ou-mdk9-kq8jii09	  Development
# ou-mdk9-yust11t0	  Staging
# ou-mdk9-emyt03lh	Security
# ou-mdk9-qj96e0m8	Exceptions
# ou-mdk9-tjuhrevk	Infrastructure

controls = [
  {
    control_names = [
      "8yfgv1as4flg600mdijhjyq69", # API_GW_CACHE_ENABLED_AND_ENCRYPTED (CheckID: 1.1.3, 2.1.1, 2.3.1, 3.1.1, 3.1.2, 3.1.3, 3.1.4, 4.1.1, 4.2.1, 4.2.2, 4.2.5, 4.3.1, 4.4.1, 5.1.1, 5.3.2, 5.3.3, 5.4.1, 6.1.1, 6.2.1, 6.3.1, 6.3.2, 6.4.1, 6.5.1, 6.6.1, 6.7.2, 6.8.1, 7.1.1, 7.1.2, 7.1.3, 8.2.1, 9.2.1, 9.3.1, 10.3.1, 10.3.2, 10.5.1, 11.1.1, 11.3.2, 12.1.1, 12.2.1, 13.1.1, 14.1.1, 14.4.1, 14.5.1, 14.6.1, 15.1.1, 15.1.2, 16.1.1, 16.2.1, 17.1.1, 17.2.1, 17.3.1, 17.4.1, 17.5.1, 17.6.1, 18.3.1, 19.1.1, 19.2.1, 19.3.1, 20.1.1, 20.2.1, 20.3.1, 20.4.1, 21.1.1, 21.2.1, 21.3.1, 21.4.1, 22.1.1, 22.2.1, 22.3.1, 22.4.1, 23.1.2, 23.3.1, 23.4.1, 23.5.1, 24.1.1, 25.1.1, 25.2.1, 25.3.1, 25.4.1, 25.4.4, 25.5.1, 25.6.1, 25.6.3, 26.1.1, 26.2.1, 26.3.1, 26.4.1, 26.4.2, 26.4.3, 26.4.4, 26.5.1, 27.1.1, 28.1.1, 29.1.1, 29.1.3, 29.1.5, 29.2.1, 29.2.2, 29.3.1, 29.5.1, 29.5.2, 29.6.1, 29.7.1, 31.1.1, 31.2.1, 32.2.1)
      "5a9vtg189jvdqqlypcouc7voc", # APPSYNC_ASSOCIATED_WITH_WAF (CheckID: 2.1.2, 2.2.1, 4.2.3, 4.2.4, 4.3.2, 5.2.1, 11.2.1, 16.3.1, 17.7.1, 18.1.1, 23.2.1, 25.1.2, 25.3.2 , 27.2.3, 29.5.3, 30.1.1)
      "96jt6tgoadmqsahe86xxc8cgm", # AURORA_LAST_BACKUP_RECOVERY_POINT_CREATED (CheckID: 1.1.1, 1.1.2, 8.1.1, 8.3.1, 9.1.1, 9.2.2, 10.1.1, 10.2.1, 10.2.2, 10.2.3, 10.3.3, 10.4.1, 10.4.2, 10.4.3, 21.3.2)
      "5v9l25gsxucfgiowfbp5ixh7y", # AURORA_RESOURCES_PROTECTED_BY_BACKUP_PLAN (CheckID: 10.4.4, 11.3.1, 25.4.2, 27.1.2, 28.2.1, 32.1.1)
      "3cerasw3dhjqcwatjqo2gk3wj", # AWS-GR_AUDIT_BUCKET_DELETION_PROHIBITED (CheckID: 29.1.4, 29.2.3)
      "k4izcjxhukijhajp6ks5mjxk",  # AWS-GR_AUDIT_BUCKET_ENCRYPTION_ENABLED (CheckID: 18.2.1)
      "4wtwsih93j7vct3k0pyvrs3e2", # AWS-GR_AUDIT_BUCKET_POLICY_CHANGES_PROHIBITED (CheckID: 6.7.1)
      "ew9b99j144ugzye49kokym66c", # AWS-GR_AUDIT_BUCKET_RETENTION_POLICY (CheckID: 29.2.4)
      "8sdhbqfe2fsmh3b1i2b24xaic", # AWS-GR_DETECT_CLOUDTRAIL_ENABLED_ON_MEMBER_ACCOUNTS (CheckID: 5.5.1, 25.4.3, 26.1.2)
      "9jzlkwys54gzgsx3pmkqnx8l1", # AWS-GR_AUDIT_BUCKET_PUBLIC_READ_PROHIBITED (CheckID: 6.3.3, 7.1.4, 14.2.1, 14.3.1)
      "1iskvg0qcxofs1t78ittjbnr5", # AWS-GR_CLOUDTRAIL_CHANGE_PROHIBITED (CheckID: 29.1.6, 29.1.2)
      "1hgbgne5nxz2xtw51snbmli9b", # AWS-GR_CT_AUDIT_BUCKET_ENCRYPTION_CHANGES_PROHIBITED (CheckID: 6.3.4, 6.8.2, 12.3.2, 23.1.1, 32.3.1)
      "aemn4s3hxv9erree434pvjboi", # AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED (CheckID: 5.3.1, 29.4.1)
    ],
    organizational_unit_ids = ["ou-mdk9-745mq3fy"], # Sandbox
  }
]
