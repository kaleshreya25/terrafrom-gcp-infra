######################################
# Global Settings
######################################
project_id = "project-name"
region     = "asia-south1"
location   = "asia-south1"

######################################
# VPC Module
######################################
vpc_name      = "vpc-dev"
routing_mode  = "REGIONAL"

######################################
# Subnet Module
######################################
subnet_name              = "private-subnet"
subnet_cidr              = "172.16.96.0/20"               # unchanged, okay

private_ip_google_access = true

# Public Subnet
public_subnet_name = "public-subnet"
public_subnet_cidr = "192.168.0.0/21"                    # unchanged, okay

######################################
# GKE Module
######################################
cluster_name          = "gke-cluster-dev"
machine_type          = "e2-medium"
service_account_email = "gke-service-account-dev.iam.gserviceaccount.com"

# GKE IP Ranges (non-overlapping)
pods_range          = "gke-pods-range"
pods_range_name     = "gke-pods-range"
pods_ip_range       = "172.20.0.0/17"                    # updated from 172.16.128.0/17 to avoid overlap

services_range      = "gke-services-range"
services_range_name = "gke-services-range"
services_ip_range   = "172.21.0.0/19"                    # updated from 172.17.0.0/19 to avoid overlap

######################################
# Firewall Module
######################################
ssh_source_ip = "203.0.113.4/32"

######################################
# Static IP Module
######################################
static_ip_names = [
  "frontend-static-ip-dev",
  "client-frontend-static-ip-dev"
]

######################################
# GCR (Artifact Registry) Module
######################################
repo_name = "gke-docker-repo"

######################################
# Cloud Storage Bucket Module
######################################
bucket_name = "stage-state-bucket"

######################################
# Project Services Module
######################################
enabled_apis = [
  "compute.googleapis.com",
  "container.googleapis.com",
  "sqladmin.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "iam.googleapis.com",
  "certificatemanager.googleapis.com"
]

######################################
# Cloud SQL PostgreSQL Module
######################################
zone               = "us-central1-a"
database_version   = "POSTGRES_15"
disk_size          = 10
disk_type          = "PD_SSD"
root_password      = ""
enable_private_ip  = true
enable_public_ip   = false
deletion_protection = false
private_network    = "projects/global/networks/vpc-dev"
db_name            = "mydatabase"
db_user            = "dbuser"
db_password        = ""

######################################
# VPC Peering Module
######################################

peering_range_name    = "sql-private-ip-range"
peering_range_address = "172.22.0.0"       # safe non-overlapping /24 block in 172.22.0.0/24
prefix_length         = 24
