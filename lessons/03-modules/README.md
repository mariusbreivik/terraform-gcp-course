# Lesson 3: Terraform Modules

## Goal

Refactor repeated patterns into reusable modules.

## Scenario

Your root configuration is growing. You want to turn repeated code into a module with a clean interface.

## Prerequisites

- Lesson 2 completed
- A root configuration that works
- Familiarity with variables and outputs

## Tasks

1. Identify what should be a module.
2. Define inputs and outputs.
3. Add validation for variables.
4. Use the module from an environment folder.

## Deliverable

Refactor one repeated pattern into a reusable module with a small input surface.

## What Good Looks Like

- The module has a clear purpose.
- The root layer stays thin.
- Inputs are validated.
- Outputs are documented.

## Constraints

- Keep the module focused on one concern.
- Do not add unnecessary abstraction.
- Avoid circular references.
