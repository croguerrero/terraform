variable "region" {
  default = "us-west1"
}
variable "zone" {
  default = "us-west1-b"
}
variable "project_id" {
  default = "testkubec"
}
variable "instance_type" {
  default = "t2.micro"
}

variable "project_name" {
  default = "flask-app"
}

variable "gcp-creds" {
  description = "Path to the JSON file used to describe your account credentials"
  type        = string
  default     = ""
}