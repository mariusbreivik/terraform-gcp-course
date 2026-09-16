# Lesson 6: Platform Engineering on GCP

## Goal

Design the platform the way a real team would operate it.

## Scenario

You now have multiple layers and environments. You need a structure that a team can operate safely.

## Prerequisites

- Lesson 5 completed
- Familiarity with module boundaries and state
- A sample dev and prod layout in mind

## Tasks

1. Split workloads by environment.
2. Define IAM boundaries.
3. Add centralized observability concepts.
4. Decide what belongs in shared vs environment-specific layers.

## Deliverable

Create a platform layout that explains how a team would operate dev and prod safely.

## What Good Looks Like

- The layout explains itself.
- Shared resources are not duplicated.
- Boundaries are clear.
- The structure is maintainable.

## Constraints

- Keep shared resources small and intentional.
- Do not duplicate what can be shared safely.
- Optimize for long-term maintainability.
