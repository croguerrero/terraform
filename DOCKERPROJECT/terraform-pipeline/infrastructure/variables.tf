variable "project_id" {
  description = "The GCP project id"
  type        = string
  default     = "testkubec"
}

variable "region" {
  default     = "us-central1"
  description = "GCP region"
  type        = string
  
}

variable "namespace" {
  description = "The project namespace to use for unique resource naming"
  type        = string
  default     = "pipeline"
}