terraform {
  backend "s3" {
    bucket = "ou-tf-state-bucket"
    key    = "control-tower-controls.tfstate"
    region = "us-east-2"
#    profile = "AWSAdministratorAccess-201810768493"
  }
}