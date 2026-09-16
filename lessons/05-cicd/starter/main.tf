// Learner task (Lesson 5): describe and implement a safe Terraform execution flow.
//
// This lesson is documentation-focused (so main.tf remains instruction-only), but
// the starter is prepared for the resources students typically need:
// - Remote state backend configuration (GCS)
// - IAM bindings for the automation principal
// - Authentication configuration for CI
// - Optional modeling of GitHub Actions permissions (documentation only)
//
// What to implement (conceptual checklist):
// 1. Separate plan and apply steps.
// 2. Ensure remote state is used with locking (GCS + state locking strategy).
// 3. Require a review gate before apply.
// 4. Keep secrets out of the repository.
//
// starter resources (optional modeling):
// - google_service_account (for automation, if you choose to model it)
// - google_project_iam_member / google_service_account_iam_member
