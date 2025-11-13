output "static_ip_addresses" {
  description = "The external global static IP addresses"
  value       = google_compute_global_address.static_ip[*].address
}

output "static_ip_names" {
  description = "The names of the global static IPs"
  value       = google_compute_global_address.static_ip[*].name
}

output "static_ip_self_links" {
  description = "Self links for the global static IPs"
  value       = google_compute_global_address.static_ip[*].self_link
}
