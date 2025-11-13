resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  project  = var.project_id

  network    = var.network
  subnetwork = var.subnetwork

  # Keep the default node pool
  remove_default_node_pool = false

  # Default node pool settings
  initial_node_count = 2
  node_locations     = ["${var.region}-a"]

  node_config {
    machine_type    = var.machine_type
    disk_size_gb    = 125
    service_account = var.service_account_email

    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]

    shielded_instance_config {
      enable_secure_boot          = true
      enable_integrity_monitoring = true
    }

    metadata = {
      disable-legacy-endpoints = "true"
      enable-metadata-server   = "true"
    }
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = var.pods_range
    services_secondary_range_name = var.services_range
  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = "172.16.0.0/28"
  }

  deletion_protection = false
}

# Application Service node pool (unchanged)
resource "google_container_node_pool" "application_service" {
  name       = "application-service-node-pool"
  cluster    = google_container_cluster.primary.name
  location   = var.region
  project    = var.project_id

  node_locations     = ["${var.region}-a"]
  initial_node_count = 1

  autoscaling {
    min_node_count = 1
    max_node_count = 4
  }

  node_config {
    machine_type    = "e2-highmem-4"
    disk_size_gb    = 125
    service_account = var.service_account_email

    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]

    shielded_instance_config {
      enable_secure_boot          = true
      enable_integrity_monitoring = true
    }

    metadata = {
      disable-legacy-endpoints = "true"
      enable-metadata-server   = "true"
    }

    labels = {
      env  = "staging"
      type = "application-service"
    }

    taint {
      key    = "role"
      value  = "application-service"
      effect = "NO_SCHEDULE"
    }
  }
}

# Third Party node pool (unchanged)
resource "google_container_node_pool" "third_party" {
  name       = "third-party-node-pool"
  cluster    = google_container_cluster.primary.name
  location   = var.region
  project    = var.project_id

  node_locations     = ["${var.region}-a"]
  initial_node_count = 2

  autoscaling {
    min_node_count = 1
    max_node_count = 4
  }

  node_config {
    machine_type    = "e2-standard-4"
    disk_size_gb    = 125
    service_account = var.service_account_email

    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]

    shielded_instance_config {
      enable_secure_boot          = true
      enable_integrity_monitoring = true
    }

    metadata = {
      disable-legacy-endpoints = "true"
      enable-metadata-server   = "true"
    }

    labels = {
      env  = "staging"
      type = "third-party"
    }

    taint {
      key    = "role"
      value  = "third-party"
      effect = "NO_SCHEDULE"
    }
  }
}
