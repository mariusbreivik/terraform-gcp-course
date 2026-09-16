# Foundation

The foundation layer is where you make a GCP project safe and usable for application teams.

In this course, foundation focuses on:
- Enabling the specific APIs you need (explicitly, via Terraform)
- Creating or referencing a service account
- Granting least-privilege IAM to that service account
- Preparing the baseline networking resources (small and intentional)

## Learning goals
- Use variables and validation to avoid hardcoding environment-specific values.
- Think about least privilege: choose narrow roles and explicit bindings.
- Understand what “enable required APIs” means in a reproducible workflow.

## What you should build in Lesson 2
Lesson 2’s starter scaffolding is meant for you to implement a minimal project foundation:
1. A VPC and subnet (small baseline network)
2. A service account
3. At least one IAM binding granting a narrow role
4. API enablement using Terraform resources (explicit lists)

## Best-practice checklist
- Keep IAM roles as narrow as possible.
- Make every project, region, and name a variable.
- Avoid implicit dependencies; ensure ordering using references.
- Keep the first version small so you can review the plan.
