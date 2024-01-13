output "gke_cluster_name" {
  value = module.gke.cluster_name
}

output "gke_cluster_endpoint" {
  value = module.gke.cluster_endpoint
}

output "gke_cluster_security_group_ids" {
  value = module.gke.cluster_security_group_ids
}
