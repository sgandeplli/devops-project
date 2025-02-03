resource "google_storage_bucket" "my_bucket" {
  name     = var.bucket_name
  location = var.bucket_location

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
