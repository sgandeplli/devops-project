provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_file)
}

resource "google_storage_bucket" "example_bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  storage_class = var.storage_class

  versioning {
    enabled = var.versioning_enabled
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.object_lifecycle_days
    }
  }
}

