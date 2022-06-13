variable "project_id" {
description = "Google Project ID."
type        = string

}

variable "bucket_name" {
description = "GCS Bucket name. Value should be unique ."
type        = string

}

variable "bucket_name_set" {
  description = "A set of GCS bucket names..."
  type        = list(string)
}

variable "region" {
description = "Google Cloud region"
type        = string
default     = "us-central1"
}