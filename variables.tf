variable "project_id" {
  description = "GCP project ID"
}

variable "region" {
  description = "GCP region"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
}

variable "vpc_name" {
  description = "Name of the VPC"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "node_pool_name" {
  description = "Name of the node pool"
}

variable "machine_type" {
  description = "Machine type for GKE  nodes"
}
