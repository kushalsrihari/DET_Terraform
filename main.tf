terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.49.0"
    }
  }
}

provider "google" {
  credentials = file("../credentials/awesome-gist-402911-68434aac7771.json")
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

  project_id       = var.project_id
  region           = var.region
  cluster_name     = "my-gke-cluster"
  subnet_id        = module.vpc.subnet_id
  ip_range_pods    = "10.2.0.0/16"
  ip_range_services = "10.3.0.0/24"
}
