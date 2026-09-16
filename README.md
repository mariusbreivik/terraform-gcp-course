# Terraform + GCP Course

This repository is a hands-on workbook for learning Terraform by building a GCP platform.

## Overview

The learner writes the code. This repo provides the tasks, starter files, checks, and hints only.

## Audience

Learners who want to use Terraform in a real GCP platform context, not as isolated syntax exercises.

## Format

- Short lessons
- One clear scenario per lesson
- Starter files with placeholders
- Acceptance checks instead of full solutions

## Course Flow

1. Terraform Basics on GCP
2. GCP Foundations with Terraform
3. Terraform Modules
4. Application Platform on GCP
5. CI/CD for Terraform
6. Platform Engineering on GCP

## Learning Outcomes

- Install and authenticate Terraform on macOS
- Build a GCP network layer
- Manage project, IAM, and API setup
- Extract reusable modules
- Design an application platform
- Structure safe CI/CD and multi-environment layouts

## Repository Layout

```text
lessons/
  01-terraform-basics/
    README.md
    starter/
    checks.md
    hints.md
  02-gcp-foundations/
  03-modules/
  04-application-platform/
  05-cicd/
  06-platform-engineering/
```

## Teaching Rules

- Do not include finished Terraform in the main path.
- Keep starter files incomplete on purpose.
- Put the expected outcome in `checks.md`.
- Put optional guidance in `hints.md`.
- Keep solutions separate if you ever add them.

## How To Use It

1. Read the lesson `README.md`.
2. Open the `starter/` files.
3. Write the Terraform yourself.
4. Compare against `checks.md`.
5. Use `hints.md` only if you get stuck.

## Support Files

- `lab-setup.md` for local macOS prerequisites
- `progress.md` for learner progress tracking
- `solutions/` for separate answer keys, if they are ever added
