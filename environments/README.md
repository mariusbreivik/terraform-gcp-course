# Environments

This repository is structured around environment overlays. The goal is to show how teams avoid accidental cross-environment changes.

In practice, you usually separate environments by one of these strategies:
- Separate folders per environment (most common)
- Separate Terraform workspaces (sometimes, but less common for multi-account orgs)
- Separate state paths per environment (required in almost all cases)

## Learning goals
- Keep shared resources shared.
- Ensure each environment has its own state boundary.
- Make IAM boundaries match your environment boundaries.

## How this shows up in the course
- Lesson 5: remote state paths per environment
- Lesson 6: design a multi-environment layout that stays maintainable
