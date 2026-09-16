# Starter

This directory contains starter scaffolding for Lesson 1.

Your goal is to write Terraform that creates:
- one custom-mode VPC
- one subnet in the same region

## What to implement
1. `versions.tf`
   - Keep Terraform and the Google provider versions pinned.
2. `variables.tf`
   - Use variables for every environment-specific value.
   - Keep CIDR validation so invalid ranges fail early.
3. `main.tf`
   - Add resources:
     - `google_compute_network` (with `auto_create_subnetworks = false` and `routing_mode`/custom mode pattern)
     - `google_compute_subnetwork` (use `ip_cidr_range = var.subnet_cidr`)
   - Avoid hardcoding project and region.
4. `outputs.tf`
   - Output at least two identifiers.
   - You can output `self_link` values for easy wiring in later lessons.

## Workflow (recommended)
- `terraform fmt`
- `terraform validate`
- `terraform plan`

When you review the plan, look for:
- the VPC being created once
- the subnet being created in your selected region
- no changes outside the expected resources

## Best practices for Lesson 1
- Keep resource arguments explicit and readable.
- Use descriptive variable names.
- Use outputs for cross-lesson wiring.

## Self-check
- Compare your code against `lessons/01-terraform-basics/checks.md`.
- Use `lessons/01-terraform-basics/hints.md` if you get stuck.
