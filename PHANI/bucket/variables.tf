variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region in which to create resources"
  type        = string
}

variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
}

variable "bucket_location" {
  description = "The location of the storage bucket"
  type        = string
}
