# Lesson 2: GCP Foundations with Terraform

## Goal

Model the core GCP building blocks with Terraform.

## Scenario

Your first network exists. Now you need to prepare a real project for applications.

## Prerequisites

- Lesson 1 completed
- A GCP project you can modify
- Terraform and `gcloud` already installed and authenticated

## Tasks

1. Create or reference a project.
2. Enable the APIs the lesson needs.
3. Add IAM bindings and a service account.
4. Add a VPC and subnet.

## Deliverable

Produce a minimal project foundation that an application team could build on.

## What Good Looks Like

- APIs are explicitly listed.
- IAM roles are narrow.
- Inputs are reused instead of duplicated.

## Constraints

- Keep the first version small.
- Do not introduce modules yet.
- Do not add extra resources unless the task requires them.
