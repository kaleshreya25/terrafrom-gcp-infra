resource "google_compute_global_address" "static_ip" {
  count        = length(var.static_ips)
  name         = var.static_ips[count.index]
  address_type = "EXTERNAL"
  project      = var.project_id
}
