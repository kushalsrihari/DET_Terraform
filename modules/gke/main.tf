resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  location = var.region

  network    = google_compute_network.vpc.name
  subnetwork = var.subnet_id

  # Configure node pools, IP masquerading, etc. as needed
}
