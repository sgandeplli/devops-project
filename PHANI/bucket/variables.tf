variable "project_id" {
  description = "saitejaameda"
  type        = string
  default = "saitejaameda"
}

variable "region" {
  description = "The region to create the bucket in"
  type        = string
  default = "us-central1"
}

variable "bucket_name" {
  description = "terra-bucket-phani-1"
  type        = string
  default = "terra-bucket-phani-1"
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
