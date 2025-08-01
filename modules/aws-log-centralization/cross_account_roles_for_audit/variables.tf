
variable "audit_account_id" {
  type = string
}

variable "role_name" {
  type = string
}

variable "trusted_services" {
  type = list(string)
  default = []
}
