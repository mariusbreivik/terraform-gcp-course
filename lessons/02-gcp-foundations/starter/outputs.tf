output "service_account_email" {
  description = "Email of the created service account (output once you create it)."
  value       = var.create_service_account ? google_service_account.this[0].email : var.service_account_email
}

output "network_self_link" {
  description = "Self link of the VPC network (output once you create it)."
  value       = google_compute_network.this.self_link
}

output "subnet_self_link" {
  description = "Self link of the subnet (output once you create it)."
  value       = google_compute_subnetwork.this.self_link
}
