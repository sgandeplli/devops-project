terraform {
  required_version = "~> 1.10.3"
  required_providers {
   google = {
      source = "hashicorp/google"
      version = "6.18.1"
    }
  }
  backend "gcs" {
    bucket = var.bucket-name
    prefix = "dev/terraform.tfstate"
  }
}

provider "google" {
    credentials = file("C:\Users\Kishore.SGPL\Desktop\Honey griet clg pdfs\devops-project\keys1.json")
    project     = "ambient-segment-444313-f1"
    region      = var.region
}

