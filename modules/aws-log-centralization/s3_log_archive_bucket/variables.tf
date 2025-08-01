
variable "bucket_name" {
  type = string
}

variable "enable_object_lock" {
  type = bool
}

variable "kms_key_arn" {
  type = string
}

variable "allowed_account_ids" {
  type = list(string)
}
