terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.49.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "./modules/vpc"

  project_id   = var.project_id
  region       = var.region
  vpc_name     = "my-vpc"
  subnet_name  = "my-subnet"
  cidr_block   = "10.0.0.0/16"
}

module "gke" {
  source = "./modules/gke"

  project_id   = var.project_id
  region       = var.region
  cluster_name = "my-gke-cluster"
  subnet_id    = module.vpc.subnet_id
}
