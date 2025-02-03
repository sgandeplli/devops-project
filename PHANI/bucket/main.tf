module "storage_bucket" {
  source = "./modules/storage_bucket"

  project = "saitejaameda"
  region  = "us-central1"
  bucket_name = "terrabucket1_jenkins"
  bucket_location = "US"
}
