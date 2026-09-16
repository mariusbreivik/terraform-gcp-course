# Starter

This directory contains starter scaffolding for Lesson 4 (application platform).

The purpose of Lesson 4 is to connect the dots:
- network and foundation identifiers from earlier layers
- secrets referenced via Secret Manager
- a small, realistic application runtime boundary

## What to implement
Use Terraform to model an application platform layer. Keep it intentionally small.

Common starter resource choices:
 - runtime identity (service account)
 - a managed application runtime service (Cloud Run is the typical example)

## What to do in each starter file
1. `variables.tf`
   - Ensure you have inputs for `project_id`, `region`, `service_name`, `secret_name`, and `service_account_email`.
   - Optionally set `container_image` and `create_cloud_run_service`.
2. `main.tf`
   - Wire the secret reference into the Cloud Run environment using `secretKeyRef` (no secret values embedded).
   - Cloud Run service creation is controlled by `create_cloud_run_service`.
3. `outputs.tf`
   - Output the Cloud Run URL when `create_cloud_run_service=true`.

## Self-check
- Compare with `lessons/04-application-platform/checks.md`.
- Ensure you did not duplicate foundation resources into the application layer.
