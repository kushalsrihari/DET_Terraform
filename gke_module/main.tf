provider "google" {
  credentials = file("../credentials/awesome-gist-402911-68434aac7771.json")
  project     = var.project_id
  region      = var.region
}

module "gke" {
  source          = "terraform-google-modules/kubernetes-engine/google"

  cluster_name     = var.gke_cluster_name
  project_id       = var.project_id
  region           = var.region
  network          = var.vpc_name
  subnetwork       = var.subnet_name
  node_pool_name   = var.node_pool_name
  node_count       = 1
  machine_type     = var.machine_type
  node_locations   = [var.region]
  enable_autoscaling = false
  ip_range_pods    = var.ip_range_pods
  ip_range_services = var.ip_range_services
}
