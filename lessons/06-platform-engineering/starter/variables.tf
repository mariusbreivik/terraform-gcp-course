variable "org_name" {
  description = "Organization display name (used for naming/documentation)."
  type        = string
}

variable "region" {
  description = "Default region for environment resources."
  type        = string

  validation {
    condition     = length(var.region) > 0
    error_message = "region must be non-empty."
  }
}

variable "dev_project" {
  description = "Project ID for the dev environment."
  type        = string

  validation {
    condition     = length(var.dev_project) > 0
    error_message = "dev_project must be non-empty."
  }
}

variable "prod_project" {
  description = "Project ID for the prod environment."
  type        = string

  validation {
    condition     = length(var.prod_project) > 0
    error_message = "prod_project must be non-empty."
  }
}

// Shared resource identifiers (optional, learners can refine).
variable "shared_network_name" {
  description = "Name of the shared VPC network used across environments."
  type        = string
  default     = null
}

variable "shared_subnet_name" {
  description = "Name of the shared subnet used across environments."
  type        = string
  default     = null
}
