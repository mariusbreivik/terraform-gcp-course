# Checks

- Uses a project input or clearly documented project reference.
- Network is configured using the provided VPC/subnet inputs.
- Service identity is modeled:
  - Either a service account is created (`create_service_account=true`)
  - Or an existing service account email is referenced (`create_service_account=false`).
- IAM + API enablement are modeled and optionally applied depending on flags:
  - APIs enabled when `enable_apis=true`
  - IAM bindings created when `manage_iam_bindings=true`
- Creates or references network resources using variables.
- Passes `terraform fmt` and `terraform validate`.
