# Network Module

This module represents the network concern: VPC + subnet wiring.

## Why it exists
Networking shows up in many lessons and many environments. The module gives you a stable interface so you can:
- change networking details in one place
- keep environment overlays small

## What you should implement (Lesson 3)
- A `google_compute_network` configured for custom-mode VPC patterns
- A `google_compute_subnetwork` placed in the correct region

## Inputs (in the skeleton)
- `project_id`
- `region`
- `network_name`
- `subnet_name`
- `subnet_cidr`

## Outputs (in the skeleton)
- `network_self_link`
- `subnet_self_link`

## Best practices
- Keep addressing inputs explicit (`subnet_cidr`).
- Ensure the subnet uses the module region.
- Prefer outputs that other modules can consume without re-deriving identifiers.
