output "network_self_link" {
  description = "Self link for the VPC network (output once you create the network)."
  value       = google_compute_network.this.self_link
}

output "subnet_self_link" {
  description = "Self link for the subnet (output once you create the subnet)."
  value       = google_compute_subnetwork.this.self_link
}
