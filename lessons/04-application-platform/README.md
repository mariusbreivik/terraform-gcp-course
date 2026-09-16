# Lesson 4: Application Platform on GCP

## Goal

Build a small but realistic GCP application platform.

## Scenario

You have foundation and modules. Now you are building the application runtime layer.

## Prerequisites

- Lesson 3 completed
- A working VPC and project foundation
- A clear idea of one app you want to deploy

## Tasks

1. Design the platform boundaries.
2. Add networking and service resources.
3. Wire secrets and managed services.
4. Keep the configuration split by responsibility.

## Deliverable

Build a small application platform that cleanly separates shared and app-specific resources.

## What Good Looks Like

- App resources are separated from shared base resources.
- Secrets are not hardcoded.
- The design can be explained in one diagram.

## Constraints

- Keep the first version small enough to review.
- Do not mix foundation resources into the application layer.
- Use managed services instead of self-managed components where possible.
