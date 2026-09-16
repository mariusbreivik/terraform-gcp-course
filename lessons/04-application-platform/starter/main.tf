resource "google_cloud_run_service" "this" {
  count = var.create_cloud_run_service ? 1 : 0

  name     = var.service_name
  location = var.region

  template {
    spec {
      # Use the provided runtime identity.
      service_account_name = var.service_account_email

      containers {
        image = var.container_image

        env {
          name = var.secret_env_var_name

          value_from {
            secret_key_ref {
              name = var.secret_name
              key  = "latest"
            }
          }
        }
      }
    }
  }

  traffic {
    percent = 100
    latest_revision = true
  }
}
