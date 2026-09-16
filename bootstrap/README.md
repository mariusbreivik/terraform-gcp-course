# Bootstrap

This section explains the things you normally do once before Terraform modules can be used safely in a new organization.

## What you are learning
- How to think about Terraform as an operational workflow (auth, state, permissions), not just code.
- How to structure remote state so multiple learners/services can work without destroying each other.
- How to keep secrets and credentials out of the repository.

## Prerequisites
- A Google account with access to a GCP organization.
- A GCP project where you want to create the first landing zone resources.
- Terraform installed locally.

## Remote state (conceptual)
Use a remote backend so state is shared, locked, and encrypted.
- Store state in a GCS bucket.
- Enable state locking (GCS native locking via a lock file pattern, or a separate locking mechanism depending on your chosen workflow).
- Make sure only the automation principal(s) and trusted engineers can read/write the bucket.

## Provider authentication (conceptual)
Prefer Application Default Credentials.
- Locally: `gcloud auth application-default login`
- For CI: authenticate using a workload identity / service account that has only the permissions needed.

## How to use this repository
Each lesson includes:
- `starter/`: files you edit
- `checks.md`: acceptance checks you can self-verify
- `hints.md`: additional guidance when you get stuck

Follow the same habit in every lesson:
1. Edit the starter files only
2. Run `terraform fmt`
3. Run `terraform validate`
4. Run `terraform plan` and review the changes

## Suggested next actions
- Choose a state bucket name and a naming scheme for state prefixes (for example `lessons/<lesson>/<env>`).
- Decide what identity runs Terraform in CI.
- Ensure the identity has at least:
  - read access to the GCS state bucket
  - write access to state object(s)
  - permissions for the resources your lesson touches
