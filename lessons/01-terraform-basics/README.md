# Lesson 1: Terraform Basics on GCP

## Goal

Learn Terraform's workflow and language by building your first GCP network.

## Prerequisites

You need a macOS machine with:

1. Homebrew installed
2. Terraform installed via Homebrew
3. Google Cloud SDK installed via Homebrew
4. An editor with HCL support, such as VS Code
5. A Google account with access to a GCP project and billing

For the full setup steps, see `lab-setup.md` at the repository root.

### Setup Steps

1. Install Homebrew if needed.
2. Run `brew install terraform google-cloud-sdk`.
3. Run `gcloud init`.
4. Run `gcloud auth application-default login`.
5. Verify `terraform version` and `gcloud version`.
6. Make sure the active project is the one you want to use for the lesson.

### Check Before You Start

- `terraform` runs in your terminal.
- `gcloud` runs in your terminal.
- You can log in with Application Default Credentials.
- You know the GCP project ID for the lesson.

## Scenario

You have been given a blank GCP project and need to create the first reusable network layer for it.

## Deliverable

Build one VPC and one subnet with Terraform, using variables for the values that would change between environments.

## Tasks

1. Pin Terraform and Google provider versions.
2. Configure the Google provider for a project and region.
3. Declare variables for project ID, region, network name, subnet name, and CIDR range.
4. Create one custom-mode VPC.
5. Create one subnet in that VPC.
6. Output the network and subnet identifiers.

## What Good Looks Like

- `terraform fmt` is clean.
- `terraform validate` passes.
- The code is readable without extra explanation.
- Variable names are descriptive and reusable.
- No project or region values are hardcoded in resource blocks.

## Constraints

- Keep the first version small.
- Do not add modules yet.
- Do not add extra networking resources yet.
- Use comments to explain any choice that is not obvious.
