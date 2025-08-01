
variable "trail_name" {
  type = string
}

variable "s3_bucket_name" {
  type = string
}

variable "is_organization_trail" {
  type = bool
}

variable "kms_key_arn" {
  type = string
}
