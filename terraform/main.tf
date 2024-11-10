terraform {

  required_version = "1.9.8"
  
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.9.0"
    }
  }

  backend "gcs" {
    bucket  = "bucket-statefile-fast-ci-cd"
    prefix  = "terraform"
  }

}

provider "google" {
  project = var.google_project_number
  region  = var.google_region
  zone    = var.google_zone
}
