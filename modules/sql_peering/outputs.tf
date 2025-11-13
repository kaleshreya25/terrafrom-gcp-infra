output "peering_connection" {
  value = {
    network = google_service_networking_connection.private_connection.network
    service = google_service_networking_connection.private_connection.service
  }
}

output "private_ip_alloc_name" {
  value = google_compute_global_address.private_ip_alloc.name
}

output "peering_network" {
  value = google_service_networking_connection.private_connection.network
}

output "peering_service" {
  value = google_service_networking_connection.private_connection.service
}
