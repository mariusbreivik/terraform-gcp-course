# Hints

- Start with `versions.tf` and `providers.tf`.
- Use `custom_mode = true` on the VPC.
- Put the subnet in the same region as the provider.
- Keep outputs simple: names and self-links are enough.
- If a value changes between dev and prod, make it a variable.
