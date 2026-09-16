# Checks

- Platform resources are in a separate layer from foundation resources.
- Uses managed services where appropriate (Cloud Run).
- Secrets are referenced via `secretKeyRef` (no secret values hardcoded).
- Uses the provided `service_account_email` identity.
- Cloud Run resource creation is optionally controlled by `create_cloud_run_service`.
- Resource names are consistent.
- Passes `terraform fmt` and `terraform validate`.
