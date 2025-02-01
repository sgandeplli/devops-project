resource "google_storage_bucket" "tf-bucket" {
  name          = var.bucket-name
  location      = var.bucket-location
  storage_class = var.bucket-storage-class
  while_uniform_bucket_level_access = true
  public_access_prevention = "enforced"
    versioning {
        enabled = true
    }
}