terraform {
  backend "s3" {
    bucket = "joyent-csp-terraform-state"
    key    = "control-tower-controls.tfstate"
    region = "us-east-2"
    profile = "AWSAdministratorAccess-201810768493"
  }
}