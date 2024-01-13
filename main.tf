provider "google" {
  credentials = file("./credentials/awesome-gist-402911-68434aac7771.json")
  project     = var.project_id
  region      = var.region
}

module "vpc" {
  source    = "./vpc_module"
}

module "gke" {
  source          = "./gke_module"
  project_id      = var.project_id
  region          = var.region
  gke_cluster_name = var.gke_cluster_name
  vpc_name         = module.vpc.network_name
  subnet_name      = module.vpc.subnetwork_name
  node_pool_name   = var.node_pool_name
  machine_type     = var.machine_type
}
