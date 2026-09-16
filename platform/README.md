# Platform

The platform layer is where you turn infrastructure primitives into deployable application capabilities.

In this course, platform emphasizes:
- Managed services instead of self-managed infrastructure
- Clear boundaries between shared foundation resources and app-specific resources
- Secret handling patterns that avoid hardcoding values

## What you will build in Lessons 4–6
Lesson 4 (Application Platform): wire a small set of runtime services and secrets.
Lesson 5 (CI/CD for Terraform): document and model a safe review/apply workflow.
Lesson 6 (Platform Engineering): design dev/prod separation and IAM boundaries.

## Best-practice checklist
- Keep secrets referenced, not embedded.
- Use consistent naming so reviewers can trace ownership.
- Make IAM boundaries explicit.
