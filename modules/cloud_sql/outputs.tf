output "instance_name" {
  value = google_sql_database_instance.instance.name
}

output "instance_connection_name" {
  value = google_sql_database_instance.instance.connection_name
}

output "private_ip_address" {
  value = google_sql_database_instance.instance.ip_address[0].ip_address
}

output "public_ip_address" {
  value = length(google_sql_database_instance.instance.ip_address) > 1 ? google_sql_database_instance.instance.ip_address[1].ip_address : null
}

output "instance_self_link" {
  value = google_sql_database_instance.instance.self_link
}
