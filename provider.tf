#  AWS Accounts
#
#  Joyent CSP, awsroot+csp@joyent.com (205930626766)         
#  DevOps, awsroot+devops@joyent.com (201810768493)          
#  Audit, awsroot+audit@joyent.com (438465136707)            
#  QETestAccount, awsroot+qetest@joyent.com (740168708388)   

provider "aws" {
  alias   = "devops"
  profile = "AWSAdministratorAccess-201810768493"
  region  = "us-east-2"
}

provider "aws" {
  alias   = "joyent-csp"
  profile = "AdministratorAccess-205930626766"
  region  = "us-east-2"
}
