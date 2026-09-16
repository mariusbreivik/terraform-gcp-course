variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "name" {
  description = "Project display name."
  type        = string
  default     = null
}

variable "folder_id" {
  description = "Folder ID to create the project in (if creating)."
  type        = string
  default     = null
}
