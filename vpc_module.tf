module "vpc" {
  source = "terraform-google-modules/network/google"
  
  project_id      = var.project_id
  network_name    = var.vpc_name
  subnetwork_name = var.subnet_name
  ip_cidr_range   = "10.0.0.0/16"
  region          = var.region
  subnetwork_secondary_ip_range = {
    var.subnet_name = ["10.0.1.0/24"]
  }
}
