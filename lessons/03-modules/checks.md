# Checks

- Module has `main.tf`, `variables.tf`, and `outputs.tf`.
- At least one input uses validation.
- Root configuration calls the module.
- Module outputs are consumed by the root layer.
- Passes `terraform fmt` and `terraform validate`.
