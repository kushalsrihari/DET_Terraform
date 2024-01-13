variable "project_id" {
  description = "Google Cloud Project ID"
}

variable "region" {
  description = "GCP region"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  default     = "my-gke-cluster"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}
