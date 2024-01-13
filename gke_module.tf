provider "google" {
  credentials = file("<path-to-your-service-account-json>")
}

module "gke" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "13.0.0"
  
  project_id  = var.project_id
  name        = var.cluster_name
  region      = var.region
  node_pools  = {
    default = {
      node_count = 3
      machine_type = "n1-standard-2"
    }
  }
  
  network = module.vpc.network_name
}
