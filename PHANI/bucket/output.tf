output "bucket_name" {
  description = "The name of the created GCS bucket"
  value       = google_storage_bucket.example_bucket.name
}

output "bucket_url" {
  description = "The URL of the created GCS bucket"
  value       = "https://console.cloud.google.com/storage/browser/${google_storage_bucket.example_bucket.name}"
}

