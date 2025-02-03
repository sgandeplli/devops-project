variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_names" {
  description = "List of subnet names"
  type        = list(string)
}

variable "subnet_ranges" {
  description = "List of subnet CIDR ranges"
  type        = list(string)
}

variable "region" {
  description = "The region for the VPC"
  type        = string
}

