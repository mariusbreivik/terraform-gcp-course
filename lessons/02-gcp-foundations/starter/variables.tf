variable "project_id" {
  description = "GCP project ID where the foundation layer will be created."
  type        = string

  validation {
    condition     = length(var.project_id) > 0
    error_message = "project_id must be non-empty."
  }
}

variable "region" {
  description = "GCP region for regional resources."
  type        = string

  validation {
    condition     = length(var.region) > 0
    error_message = "region must be non-empty."
  }
}

variable "network_name" {
  description = "Name of the VPC network."
  type        = string

  validation {
    condition     = length(var.network_name) > 0
    error_message = "network_name must be non-empty."
  }
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string

  validation {
    condition     = length(var.subnet_name) > 0
    error_message = "subnet_name must be non-empty."
  }
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet (example: 10.0.1.0/24)."
  type        = string

  validation {
    condition     = can(cidrhost(var.subnet_cidr, 0))
    error_message = "subnet_cidr must be a valid CIDR."
  }
}

variable "enable_apis" {
  description = "Whether to enable required Google APIs for this lesson." 
  type        = bool
  default     = false
}

variable "required_apis" {
  description = "List of APIs to enable when enable_apis is true." 
  type        = list(string)
  default     = [
    "run.googleapis.com",
    "secretmanager.googleapis.com"
  ]
}

variable "service_account_id" {
  description = "Service account ID (not the email)."
  type        = string

  validation {
    condition     = length(var.service_account_id) > 0
    error_message = "service_account_id must be non-empty."
  }
}

variable "create_service_account" {
  description = "Whether to create the service account in this lesson." 
  type        = bool
  default     = false
}

variable "service_account_email" {
  description = "Existing service account email to use when create_service_account is false." 
  type        = string
  default     = null

  validation {
    condition     = var.create_service_account || (var.service_account_email != null && length(var.service_account_email) > 0)
    error_message = "service_account_email must be set when create_service_account is false."
  }
}

variable "manage_iam_bindings" {
  description = "Whether to create IAM bindings in this lesson." 
  type        = bool
  default     = false
}

variable "iam_member" {
  description = "IAM member to bind to the created service account (example: user:me@example.com)."
  type        = string

  // Keep this required so learners consciously choose least-privilege roles.
  validation {
    condition     = length(var.iam_member) > 0
    error_message = "iam_member must be non-empty."
  }
}

variable "iam_role" {
  description = "IAM role to grant to iam_member (example: roles/viewer)."
  type        = string

  validation {
    condition     = length(var.iam_role) > 0
    error_message = "iam_role must be non-empty."
  }
}
