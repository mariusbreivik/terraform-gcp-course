# Networking

Networking is how you make application connectivity repeatable and safe.

In a new organization, networking usually includes:
- VPC networks and subnets
- Routing behavior (basic custom-mode VPC patterns)
- Firewall rules
- Shared services integration (DNS, private service access) when needed

## Learning goals
- Model networks with Terraform in a way that is environment-portable.
- Use inputs for naming and addressing.
- Make sure regional resources use the same region consistently.

## What you should build in Lesson 1
Lesson 1 focuses on the core pattern:
- `google_compute_network` with `custom_mode = true`
- `google_compute_subnetwork` placed in the provider region

Keep it minimal so learners practice the workflow without drowning in networking details.

## Best-practice checklist
- Use CIDR validation to catch mistakes early.
- Use Terraform outputs to expose the identifiers other layers need.
- Prefer explicit resource arguments over provider defaults when clarity matters.
