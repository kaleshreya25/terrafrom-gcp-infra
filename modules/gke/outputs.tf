output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "endpoint" {
  value = google_container_cluster.primary.endpoint
}

output "cluster_master_version" {
  value = google_container_cluster.primary.master_version
}

# Default pool is auto-created by GKE as "default-pool"
output "default_node_pool_name" {
  value = "default-pool"
}

# (Won't update dynamically if you later enable autoscaling on that pool outside TF.)
output "default_node_pool_node_count" {
  value = google_container_cluster.primary.initial_node_count
}
