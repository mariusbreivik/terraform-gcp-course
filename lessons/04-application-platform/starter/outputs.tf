output "service_account_email" {
  description = "Email of the app service account (output once you create it)."
  value       = var.service_account_email
}

output "cloud_run_service_url" {
  description = "URL of the Cloud Run service (output once you create it)."
  value       = var.create_cloud_run_service ? google_cloud_run_service.this[0].status[0].url : null
}

output "secret_resource_id" {
  description = "Secret resource ID (output once you reference/create it)."
  value       = var.secret_name
}
