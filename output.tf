output "gke_cluster_name" {
  value = module.gke.cluster_name
}

output "gke_cluster_endpoint" {
  value = module.gke.cluster_endpoint
}

output "gke_cluster_security_group_ids" {
  value = module.gke.cluster_security_group_ids
}

output "vpc_network_name" {
  value = module.vpc.network_name
}

output "vpc_subnet_name" {
  value = module.vpc.subnetwork_name
}
