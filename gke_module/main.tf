resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  location = var.region

  network    = var.vpc_name
  subnetwork = var.subnet_id

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = var.ip_range_pods
    services_ipv4_cidr_block = var.ip_range_services
  }

  # Configure node pools, IP masquerading, etc. as needed
}
