# Starter

This directory contains starter scaffolding for Lesson 2.

Your goal is to create a minimal, reviewable “application-ready” foundation.

## What you will build
1. Reuse the network created earlier by creating (or modeling) VPC + subnet
2. Model a foundation service identity
3. Optionally enable required APIs
4. Optionally add least-privilege IAM bindings

## What to implement in the starter files
1. `versions.tf`
   - Keep Terraform and the Google provider pinned.
2. `variables.tf`
    - Confirm you have inputs for:
      - `project_id`, `region`
      - `network_name`, `subnet_name`, `subnet_cidr`
      - `service_account_id`, `iam_member`, `iam_role`
      - `service_account_email` (used when you do not create a service account)
      - toggles for whether to create/enable IAM+APIs
  3. `main.tf`
    - Add resources (in any reasonable order, but prefer reference-based ordering):
      - service account (optional via `create_service_account`)
      - IAM binding (optional via `manage_iam_bindings`)
      - API enablement (optional via `enable_apis`)
      - network and subnet
    - Keep the first version small: avoid adding more networking features than necessary.
4. `outputs.tf`
   - Output identifiers needed by later lessons (at least service account email and network/subnet self links).

## What good looks like in `terraform plan`
- Network resources are present.
- Service account email is produced (either from a created SA or an input `service_account_email`).
- No provider configuration drift.

## Runnable defaults
To keep this lesson runnable for self-paced learners with limited org permissions:
- `create_service_account=false`
- `manage_iam_bindings=false`
- `enable_apis=false`

Learners can flip those to `true` to see the full modeled IAM/API enablement in `terraform plan`.

## Best-practice checklist
- Use narrow IAM roles.
- Treat project ID and region as variables.
- Keep secrets out of this layer; this lesson is about setup and permissions.

## Self-check
- Compare with `lessons/02-gcp-foundations/checks.md`.
- Use `lessons/02-gcp-foundations/hints.md` when blocked.
