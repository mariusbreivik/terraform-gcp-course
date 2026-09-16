# IAM Module

IAM is where production Terraform often succeeds or fails.

This module skeleton exists to teach:
- least-privilege design
- explicit bindings
- stable interface patterns

## What learners should implement
- Create (or reference) a service account
- Apply least-privilege IAM bindings for a controlled set of roles

## Inputs (skeleton)
- `service_account_id` (optional)
- `service_account_email` (optional)
- `bindings`: a list of objects containing `role` and `members`

## Outputs (skeleton)
- `service_account_email`

## Best practices
- Prefer specific roles over broad roles.
- Keep IAM bindings grouped by responsibility.
- Add validation so incorrect inputs fail early.
