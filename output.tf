output "gke_cluster_name" {
  value = module.gke.cluster_name
}

output "gke_endpoint" {
  value = module.gke.endpoint
}

output "vpc_name" {
  value = module.vpc.vpc_name
}

output "subnet_name" {
  value = module.vpc.subnet_name
}
