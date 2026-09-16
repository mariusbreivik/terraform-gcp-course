output "network_self_link" {
  description = "Self link of the VPC network (after you implement google_compute_network)."
  value       = google_compute_network.this.self_link
}

output "subnet_self_link" {
  description = "Self link of the subnet (after you implement google_compute_subnetwork)."
  value       = google_compute_subnetwork.this.self_link
}
