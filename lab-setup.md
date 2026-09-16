# Lab Setup

This guide prepares a macOS machine for Lesson 1.

## Requirements

- macOS
- Administrator access to install software
- A Google account with access to a GCP project
- Billing access for the project if you will create resources

## Install Tools

1. Install Homebrew if it is not already present.
2. Install Terraform: `brew install terraform`.
3. Install Google Cloud SDK: `brew install google-cloud-sdk`.
4. Install an editor with HCL support, such as VS Code.

Example commands:

```bash
brew --version
brew install hashicorp/tap/terraform google-cloud-sdk
code --install-extension HashiCorp.terraform
```

## Authenticate

1. Run `gcloud init`. This configures your `gcloud` CLI (including the default account and project).
2. Run `gcloud auth application-default login`. This stores your user credentials as Application Default Credentials (ADC) so Terraform’s Google provider can use them.
3. Confirm the correct project is active.

Example commands:

```bash
gcloud init
gcloud auth application-default login
gcloud config get-value project
```

## Verify

Run these commands:

```bash
terraform version
gcloud version
gcloud auth application-default print-access-token
```

If those commands work, the machine is ready for Lesson 1.

## GCP Access Checklist

- You know the project ID
- Billing is enabled for the project
- Your account can create networking resources
- Your account can enable APIs if the lesson needs it

## Troubleshooting

- If `terraform` is missing, reopen the terminal after installing.
- If `gcloud` is missing, verify your shell path.
- If authentication fails, rerun `gcloud auth application-default login`.
