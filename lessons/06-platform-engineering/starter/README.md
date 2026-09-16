# Starter

This directory contains starter scaffolding for Lesson 6 (Platform Engineering).

Your goal is to design how a real team would operate dev and prod safely.

## What you should produce
An architecture that clearly separates:
- shared platform resources
- environment-specific workloads
- IAM boundaries
- observability concepts

## How to use this starter
This lesson is intentionally documentation-heavy. Treat `main.tf` as a place to:
- outline module usage
- define which identifiers are shared vs per-environment
- document how state boundaries are applied

## What to implement
1. `variables.tf`
   - Make sure you have dev/prod project IDs and a default region.
   - Add shared identifiers only when your design needs them.
2. `main.tf`
   - Describe (in code comments) how you would wire shared vs environment-specific modules.
   - Decide where IAM boundaries should live.
3. `outputs.tf`
   - Output the shared identifiers that environment overlays would consume.

## Self-check
- Compare with `lessons/06-platform-engineering/checks.md`.
- Read `lessons/06-platform-engineering/hints.md` if you need guidance.
