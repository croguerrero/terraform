terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }

  cloud {
    organization = "slopeit" # The organization to use for the Terraform state

    workspaces {
      name = "gcp-workflow" # The name of the Terraform workspace to use
    }
  }
}