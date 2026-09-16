# Modules

Terraform modules are how you turn repeated infrastructure patterns into stable building blocks.

In this course, modules matter because a real organization needs:
- Consistent interfaces (inputs/outputs)
- Validations to prevent accidental misuse
- Clear ownership boundaries between teams

## How modules are used here
- Lesson 3: you extract one repeated network pattern into a module.
- Later lessons: you reference module outputs to keep your platform layers thin.

## Module design checklist
- Keep the module focused on one concern.
- Validate inputs using `validation` blocks.
- Document every input and output.
- Avoid leaking provider-specific assumptions into the interface.
- Prefer small outputs that are easy to compose.
