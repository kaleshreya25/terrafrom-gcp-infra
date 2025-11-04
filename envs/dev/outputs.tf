######################################
# 🌐 VPC Module Outputs
######################################
output "vpc_id" {
  description = "The ID of the created VPC network"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of the created subnet"
  value       = module.vpc.subnet_id
}

output "subnet_self_link" {
  description = "The self link of the created subnet"
  value       = module.vpc.subnet_self_link
}

output "public_subnet_self_link" {
  description = "The self link of the public subnet"
  value       = module.vpc.public_subnet_self_link
}

output "public_subnet_name" {
  description = "The name of the public subnet"
  value       = module.vpc.public_subnet_name
}

######################################
# ☸️ GKE Cluster Outputs
######################################
output "gke_cluster_name" {
  description = "Name of the GKE cluster"
  value       = module.gke_cluster.cluster_name
}

output "gke_cluster_endpoint" {
  description = "Endpoint of the GKE cluster"
  value       = module.gke_cluster.endpoint
}

output "gke_cluster_version" {
  description = "Master version of the GKE cluster"
  value       = module.gke_cluster.cluster_master_version
}

output "gke_default_node_pool_name" {
  description = "Name of the default node pool"
  value       = module.gke_cluster.default_node_pool_name
}

output "gke_default_node_pool_node_count" {
  description = "Node count of the default node pool"
  value       = module.gke_cluster.default_node_pool_node_count
}

######################################
# 📦 Artifact Registry (GCR) Outputs
######################################
output "artifact_registry_repo_url" {
  description = "Docker Artifact Registry repo URL"
  value       = module.gcr.repo_url
}

######################################
# 🌐 Static IP Outputs
######################################
/*output "static_ip_addresses" {
  description = "The external static IP addresses"
  value       = module.static_ip.static_ip_addresses
}

output "static_ip_names" {
  description = "The names of the created static IP resources"
  value       = module.static_ip.static_ip_names
}

output "static_ip_self_links" {
  description = "Self links of the external static IPs"
  value       = module.static_ip.static_ip_self_links
}*/

######################################
# 🐘 Cloud SQL PostgreSQL Outputs
######################################
/*output "postgres_instance_connection_name" {
  description = "Connection name of the PostgreSQL instance"
  value       = module.cloud_sql.instance_connection_name
}

output "postgres_instance_self_link" {
  description = "Self-link to the PostgreSQL instance"
  value       = module.cloud_sql.instance_self_link
}

output "postgres_instance_name" {
  description = "Name of the PostgreSQL instance"
  value       = module.cloud_sql.instance_name
}

output "postgres_private_ip" {
  description = "Private IP of the PostgreSQL instance"
  value       = module.cloud_sql.private_ip_address
}

output "postgres_public_ip" {
  description = "Public IP of the PostgreSQL instance (if assigned)"
  value       = module.cloud_sql.public_ip_address
}*/

######################################
# VPC_Peering_module
######################################

/*output "peering_connection" {
  value = module.sql_peering.peering_connection
}

output "peering_network" {
  value = module.sql_peering.peering_network
}

output "peering_service" {
  value = module.sql_peering.peering_service
}

output "sql_private_ip_alloc_name" {
  value = module.sql_peering.private_ip_alloc_name
}*/
