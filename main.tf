provider "google" {
  credentials = file("awesome-gist-402911-68434aac7771.json")
  project     = var.project_id
  region      = var.region
}

module "vpc" {
  source    = "./vpc_module"
}

module "gke" {
  source          = "./gke_module"
}
