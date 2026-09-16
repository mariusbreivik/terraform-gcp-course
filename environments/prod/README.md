# Prod Environment

Prod is where correctness matters most. The goal is stable behavior, least privilege, and controlled changes.

## Typical prod characteristics
- Strong separation from dev (state, IAM, and deployment pipelines)
- Auditable apply workflows (review gate)
- Observability and alerting patterns

## What to focus on in this course
- Prod-specific layout choices and IAM boundaries (Lesson 6)
- Review-gated apply and locked remote state (Lesson 5)
