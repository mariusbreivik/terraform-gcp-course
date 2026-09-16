# Cloud Run Module

This module is a placeholder for an application runtime pattern.

In a real organization, Cloud Run services commonly integrate with:
- Secret Manager
- Service accounts (runtime identity)
- Artifact Registry (container images)

## What learners should implement
- A `google_cloud_run_service` using an input image and consistent naming
- Optionally: secret mounts or environment variable references
- Optionally: runtime service account wiring

## Inputs (skeleton)
- `name`
- `region`
- `project_id`
- `image` (optional)
- `service_account_email` (optional)

## Outputs (skeleton)
- `service_url`

## Best practices
- Avoid embedding secret values directly in Terraform.
- Use dedicated runtime service accounts instead of the default identity.
- Keep module outputs small and meaningful.
