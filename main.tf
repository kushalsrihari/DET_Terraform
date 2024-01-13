provider "google" {
  credentials = file("<path-to-your-service-account-json>")
  project     = var.project_id
  region      = var.region
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 3.0"
    }
  }
}

module "vpc" {
  source      = "./vpc_module"
  project_id  = var.project_id
  region      = var.region
}

module "gke" {
  source       = "./gke_module"
  project_id   = var.project_id
  region       = var.region
  cluster_name = var.cluster_name
}
