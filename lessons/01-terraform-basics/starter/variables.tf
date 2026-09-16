variable "project_id" {
  description = "GCP project ID where resources will be created."
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
