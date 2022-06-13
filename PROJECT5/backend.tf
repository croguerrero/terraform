terraform {
  cloud {
    organization = "slopeit"

    workspaces {
      name = "gcp-workflow"
    }
  }
}