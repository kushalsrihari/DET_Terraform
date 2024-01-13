provider "google" {
  credentials = file("<PATH_TO_YOUR_SERVICE_ACCOUNT_KEY_JSON>")
  project     = var.project_id
  region      = var.region
}

module "gke" {
  source = "terraform-google-modules/kubernetes-engine/google"

  cluster_name     = var.cluster_name
  project_id       = var.project_id
  region           = var.region
  network          = module.vpc.network_name
  subnetwork       = module.vpc.subnetwork_name
  node_pool_name   = var.node_pool_name
  node_count       = 1
  machine_type     = var.machine_type
  node_locations   = [var.region]
  enable_autoscaling = false
}
