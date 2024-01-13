provider "google" {
  credentials = file("awesome-gist-402911-68434aac7771.json")
  project     = var.project_id
  region      = var.region
}

module "vpc" {
  source    = "./vpc_module"
  project_id = var.project_id
  region     = var.region
}

module "gke" {
  source          = "./gke_module"
  project_id      = var.project_id
  region          = var.region
  cluster_name    = var.cluster_name
  node_pool_name  = var.node_pool_name
  machine_type    = var.machine_type
}
