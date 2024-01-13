provider "google" {
  credentials = file("../credentials/awesome-gist-402911-68434aac7771.json")
  project     = var.project_id
  region      = var.region
}

module "vpc" {
  source = "terraform-google-modules/network/google"

  project_id      = var.project_id
  network_name    = var.vpc_name
  subnets         = [var.subnet_name]
  location        = var.region
  ip_cidr_range   = "10.0.0.0/16"
  subnetwork_secondary_ip_range = {}
}
