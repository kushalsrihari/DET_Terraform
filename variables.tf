variable "project_id" {
  description = "GCP project ID"
}

variable "region" {
  description = "GCP region"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  default     = "my-gke-cluster"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "my-vpc"
}

variable "subnet_name" {
  description = "Name of the subnet"
  default     = "my-subnet"
}

variable "node_pool_name" {
  description = "Name of the node pool"
  default     = "default-pool"
}

variable "machine_type" {
  description = "Machine type for GKE nodes"
  default     = "e2-medium"
}

variable "ip_range_pods" {
  description = "IP range for GKE pods"
  default     = "192.168.0.0/16"
}

variable "ip_range_services" {
  description = "IP range for GKE services"
  default     = "10.0.0.0/20"
}
