resource "google_compute_network" "this" {
  name                    = var.network_name
  auto_create_subnetworks = false

  # "Custom mode" VPC pattern: explicitly manage subnets.
  routing_mode = "REGIONAL"
}

resource "google_compute_subnetwork" "this" {
  name           = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region         = var.region
  network        = google_compute_network.this.id
}

resource "google_service_account" "this" {
  count        = var.create_service_account ? 1 : 0
  account_id   = var.service_account_id
  display_name = "Foundation service account"
}

resource "google_project_service" "required" {
  count = var.enable_apis ? length(var.required_apis) : 0

  project            = var.project_id
  service            = var.required_apis[count.index]
  disable_on_destroy = false
}

resource "google_service_account_iam_member" "binding" {
  count = var.manage_iam_bindings && var.create_service_account ? 1 : 0

  service_account_id = google_service_account.this[0].name
  role                = var.iam_role
  member              = var.iam_member
}
