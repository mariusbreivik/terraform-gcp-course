# Checks

 - Uses a consistent Terraform version requirement (`required_version`).
 - Uses a consistent `hashicorp/google` provider version requirement.
 - Declares variables for project, region, network name, subnet name, and CIDR.
 - Creates one `google_compute_network` resource.
 - Creates one `google_compute_subnetwork` resource.
 - Exposes at least two outputs.
- Does not hardcode environment-specific values in resource arguments.
- Passes `terraform fmt` and `terraform validate`.
