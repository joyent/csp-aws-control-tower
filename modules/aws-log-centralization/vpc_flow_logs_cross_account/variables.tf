
variable "s3_bucket_arn" {
  type = string
}

variable "role_name" {
  type = string
}

variable "member_account_ids" {
  type = list(string)
}
