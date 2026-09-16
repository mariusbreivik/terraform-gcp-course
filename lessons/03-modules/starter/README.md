# Starter

This directory contains starter scaffolding for Lesson 3 (modules).

The intention of Lesson 3 is to help you learn how to:
- extract a focused concern into a module
- define inputs and outputs with validation
- consume the module from a root layer

## Suggested module to implement
Use the existing `/modules/network` skeleton and implement the network concern:
- VPC
- subnet

## What to implement in this lesson
1. In `modules/network/*`
   - implement the actual network resources
   - set `network_self_link` and `subnet_self_link` outputs
   - validate inputs (for example, CIDR formatting)
2. In this root `starter/`
   - wire the module call (choose a correct relative path)
   - re-expose the module outputs from `outputs.tf`

## How to review your work
- Run `terraform fmt` and `terraform validate` in both the module and the lesson root.
- Run `terraform plan` and confirm the module expands into the expected network resources.
- Compare with `lessons/03-modules/checks.md`.

## Best practices
- Keep the module interface small.
- Prefer validation on inputs that commonly break (CIDR, non-empty strings).
- Avoid copying large variable maps through the module if you can pass explicit values.
