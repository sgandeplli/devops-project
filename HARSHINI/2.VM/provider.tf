terraform {
  required_version = "~> 1.10.3"
  required_providers {
   google = {
      source = "hashicorp/google"
      version = "6.18.1"
    }
  }
}

provider "google" {
    credentials = file("C:\Users\Kishore.SGPL\Desktop\Honey griet clg pdfs\devops-project\keys1.json")
    project     = var.project
    region      = var.region
    zone        = var.zone
}

