# Create a GCS Bucket
resource "google_storage_bucket" "bucket" {
  name       = var.bucket_name
  location   = var.region
}
resource "google_storage_bucket" "my_bucket_set" {
  project       = var.project_id
  for_each      = toset(var.bucket_name_set)
  name          = each.value #note:each.key and each.value are the same for a set
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = true
  uniform_bucket_level_access = true
}