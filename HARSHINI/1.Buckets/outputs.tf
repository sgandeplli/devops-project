output "bucket_name"{
    value = google_storage_bucket.tf-bucket.name
}
output "bucket_location"{
    value = google_storage_bucket.tf-bucket.location
}
output "bucket_storage_class"{
    value = google_storage_bucket.tf-bucket.storage_class
}