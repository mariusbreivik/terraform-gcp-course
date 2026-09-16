# Starter

This directory contains starter scaffolding for Lesson 5 (CI/CD for Terraform).

Lesson 5 is documentation-focused: you will describe a safe workflow and (optionally) model IAM/state-related pieces.

## The safe workflow you should practice
1. A developer opens a pull request.
2. CI runs `terraform plan` against remote state.
3. Reviewers inspect the plan (especially destructive actions).
4. Only after approval, CI runs `terraform apply` using the previously created plan output.

## What your starter files should cover
1. `variables.tf`
   - You should have the environment name and remote state location inputs:
     - `state_bucket`, `state_prefix`
   - You also need `project_id` and `region` for provider configuration.
2. `main.tf`
   - Keep this lean: document what resources you would create (or which existing ones you would reference) to enable the workflow.
3. `outputs.tf`
   - Output the state path used and any IDs you need for reviewer traceability.

## Best practices
- Never run production apply directly from a laptop.
- Keep secrets out of the repository.
- Ensure the automation identity has least privilege.

## Self-check
- Compare with `lessons/05-cicd/checks.md`.
- Read `lessons/05-cicd/hints.md` for guidance on how to start.
