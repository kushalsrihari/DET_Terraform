resource "google_compute_network" "vpc" {
  name    = var.vpc_name
  project = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr_block
  region        = var.region
  network       = google_compute_network.vpc.name
}

output "subnet_id" {
  value = google_compute_subnetwork.subnet.id
}
