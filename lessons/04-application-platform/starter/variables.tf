variable "project_id" {
  description = "GCP project ID where application platform resources will be created."
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

variable "app_name" {
  description = "Short application name used for resource naming."
  type        = string

  validation {
    condition     = length(var.app_name) > 0
    error_message = "app_name must be non-empty."
  }
}

variable "service_name" {
  description = "Cloud Run service name (or service identifier)."
  type        = string

  validation {
    condition     = length(var.service_name) > 0
    error_message = "service_name must be non-empty."
  }
}

variable "secret_name" {
  description = "Name of the secret to reference from this app (Secret Manager)."
  type        = string
  validation {
    condition     = length(var.secret_name) > 0
    error_message = "secret_name must be non-empty."
  }
}

variable "secret_env_var_name" {
  description = "Environment variable name inside the application that will receive the secret value."
  type        = string
  default     = "APP_SECRET"
}

variable "service_account_email" {
  description = "Service account email used by the Cloud Run service identity (e.g. app-sa@PROJECT_ID.iam.gserviceaccount.com)."
  type        = string
  validation {
    condition     = length(var.service_account_email) > 0
    error_message = "service_account_email must be non-empty."
  }
}

variable "container_image" {
  description = "Container image to deploy to Cloud Run."
  type        = string
  default     = "us-docker.pkg.dev/cloudrun/container/hello"
}

variable "create_cloud_run_service" {
  description = "Whether to create the Cloud Run service. Leave false to keep this lesson runnable when the Cloud Run API is not enabled." 
  type        = bool
  default     = false
}
