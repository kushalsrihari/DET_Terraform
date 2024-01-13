variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  description = "GCP Region"
}

variable "gke_cluster_name" {
  description = "Name of the GKE Cluster"
  default     = "my-gke-cluster"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "my-vpc"
}

variable "subnet_name" {
  description = "Name of the Subnet"
  default     = "my-subnet"
}

variable "node_pool_name" {
  description = "Name of the GKE Node Pool"
  default     = "default-pool"
}

variable "machine_type" {
  description = "GKE Node Machine Type"
  default     = "e2-medium"
}

variable "ip_range_pods" {
  description = "IP Range for Pods in GKE Cluster"
  default     = "10.0.1.0/24"
}

variable "ip_range_services" {
  description = "IP Range for Services in GKE Cluster"
  default     = "10.0.2.0/24"
}
