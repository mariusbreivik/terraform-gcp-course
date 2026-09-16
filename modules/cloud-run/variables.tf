variable "name" {
  description = "Cloud Run service name."
  type        = string
}

variable "region" {
  description = "Region for the Cloud Run service."
  type        = string
}

variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "image" {
  description = "Container image reference."
  type        = string
  default     = null
}

variable "service_account_email" {
  description = "Service account email the service will run as."
  type        = string
  default     = null
}
