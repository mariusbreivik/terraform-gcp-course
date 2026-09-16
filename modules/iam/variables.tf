variable "service_account_id" {
  description = "Service account ID (not email)."
  type        = string
  default     = null
}

variable "service_account_email" {
  description = "Service account email (use if the SA is created elsewhere)."
  type        = string
  default     = null
}

variable "bindings" {
  description = "IAM bindings to apply: list of objects with members and role."
  type = list(object({
    role    = string
    members = list(string)
  }))
  default = []
}
