# Project Module

This module is a placeholder for project lifecycle responsibilities.

In many organizations, project creation is controlled by org teams and may not be allowed from app teams. That means learners should treat this module as one of:
- A creation module (when safe)
- A reference module (when projects are pre-created)

## Inputs (skeleton)
- `project_id`
- `name` (optional)
- `folder_id` (optional)

## Output (skeleton)
- `project_id`

## Best practices
- Model IAM and org-policy constraints explicitly.
- Avoid creating projects automatically if your org policy forbids it.
