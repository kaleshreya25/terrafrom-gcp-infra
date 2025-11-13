resource "google_sql_database_instance" "instance" {
  name             = "${var.project_id}-sql-instance"
  project          = var.project_id
  region           = substr(var.zone, 0, length(var.zone)-2) # extract region from zone (e.g. "us-central1" from "us-central1-a")

  database_version = var.database_version
  deletion_protection = var.deletion_protection

  settings {
    tier = "db-f1-micro" # Example fixed tier; you can parametrize if needed
    disk_size = var.disk_size
    disk_type = var.disk_type

    ip_configuration {
      ipv4_enabled    = var.enable_public_ip
      private_network = var.private_network
    }
  }
}

resource "google_sql_database" "default_db" {
  name     = var.db_name
  instance = google_sql_database_instance.instance.name
  project  = var.project_id
}

resource "google_sql_user" "db_user" {
  name     = var.db_user
  instance = google_sql_database_instance.instance.name
  password = var.db_password
  project  = var.project_id
}
