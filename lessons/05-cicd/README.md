# Lesson 5: CI/CD for Terraform

## Goal

Move Terraform execution into Git-based automation.

## Scenario

Your Terraform code works locally. Now you want a safe review and apply workflow in Git.

## Prerequisites

- Lesson 4 completed
- A remote state backend plan
- Basic familiarity with Git and pull requests

## Tasks

1. Separate plan and apply.
2. Use remote state.
3. Add authentication for automation.
4. Make the workflow safe to review.

## Deliverable

Describe and implement a safe Terraform execution flow that a team could use.

## What Good Looks Like

- Plans are created before apply.
- Apply is gated.
- State is remote and locked.
- The workflow is easy to follow.

## Constraints

- Do not run production apply directly from a laptop.
- Keep secrets out of the repository.
- Prefer one clear workflow over multiple overlapping ones.
