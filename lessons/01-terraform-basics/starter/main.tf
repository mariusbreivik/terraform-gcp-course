resource "google_compute_network" "this" {
  name                    = var.network_name
  auto_create_subnetworks = false

  # "Custom mode" VPC pattern: explicitly manage subnets.
  routing_mode = "REGIONAL"
}

resource "google_compute_subnetwork" "this" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.this.id
}
