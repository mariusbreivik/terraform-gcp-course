variable "environment" {
  description = "Target environment name (for example: dev)."
  type        = string
  validation {
    condition     = length(var.environment) > 0
    error_message = "environment must be non-empty."
  }
}

variable "project_id" {
  description = "GCP project ID where CI/CD-related resources will be configured."
  type        = string
  validation {
    condition     = length(var.project_id) > 0
    error_message = "project_id must be non-empty."
  }
}

variable "region" {
  description = "GCP region for regional resources used by CI/CD."
  type        = string
  validation {
    condition     = length(var.region) > 0
    error_message = "region must be non-empty."
  }
}

variable "state_bucket" {
  description = "GCS bucket name used as the Terraform remote state backend."
  type        = string
  validation {
    condition     = length(var.state_bucket) > 0
    error_message = "state_bucket must be non-empty."
  }
}

variable "state_prefix" {
  description = "State prefix (path) inside the bucket, for example: lessons5/dev."
  type        = string
  validation {
    condition     = length(var.state_prefix) > 0
    error_message = "state_prefix must be non-empty."
  }
}

// Optional inputs for automation/workflow modeling.
variable "automation_principal" {
  description = "IAM principal that runs the automation (for example: serviceAccount:...); learners may use it when modeling IAM bindings."
  type        = string
  default     = null
}

variable "github_owner" {
  description = "GitHub organization/user that owns the repo (if you model GitHub Actions)."
  type        = string
  default     = null
}

variable "github_repo" {
  description = "GitHub repository name (if you model GitHub Actions)."
  type        = string
  default     = null
}
