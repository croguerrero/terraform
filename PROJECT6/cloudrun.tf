resource "google_cloud_run_service" "default" {
  name     = var.cloudname
  location = var.cloudregion

  template {
    spec {
      containers {
        image = "docker/nginx:latest"
      }
    }
    metadata {
      name = "cloudrun-srv-green"
    }
  }

  traffic {
    percent       = 25
    revision_name = "cloudrun-srv-green"
  }

  traffic {
    percent       = 75
    # This revision needs to already exist
    revision_name = "cloudrun-srv-blue"
  }
}