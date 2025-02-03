variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default     = "saitejaameda"
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "credentials_file" {
  description = "Path to the GCP credentials JSON file"
  type        = string
  default     = "gcp.json"
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
  default     = "my-terraform-gcs-bucket"
}

variable "bucket_location" {
  description = "The location of the GCS bucket"
  type        = string
  default     = "US"
}

variable "storage_class" {
  description = "The storage class of the GCS bucket"
  type        = string
  default     = "STANDARD"
}

variable "versioning_enabled" {
  description = "Enable versioning on the bucket"
  type        = bool
  default     = true
}

variable "object_lifecycle_days" {
  description = "Number of days before objects are deleted"
  type        = number
  default     = 30
}

