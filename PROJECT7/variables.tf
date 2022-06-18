variable "project_id" {
description = "Google Project ID."
type        = string

}

variable "region" {
description = "Google Cloud region"
type        = string
default     = "us-central1"
}

variable "gke_username" {
  type = "string"
  description = "gke username"
}

variable "gke_password" {
  type = "string"
  description = "gke password"
}

variable "gke_num_nodes" {
  type = "string"
  description = "number of gke nodes"
}