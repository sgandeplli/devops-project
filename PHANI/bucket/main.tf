provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.bucket_location
  storage_class = var.storage_class
}

output "bucket_name" {
  value = google_storage_bucket.bucket.name
}

output "bucket_url" {
  value = "gs://${google_storage_bucket.bucket.name}"
}
