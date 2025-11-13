variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "zone" {
  description = "GCP zone for the SQL instance"
  type        = string
}

variable "database_version" {
  description = "Database version for Cloud SQL"
  type        = string
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
}

variable "disk_type" {
  description = "Disk type e.g. PD_SSD"
  type        = string
}

variable "root_password" {
  description = "Root user password"
  type        = string
  sensitive   = true
}

variable "enable_private_ip" {
  description = "Enable private IP"
  type        = bool
  default     = true
}

variable "enable_public_ip" {
  description = "Enable public IP"
  type        = bool
  default     = false
}

variable "deletion_protection" {
  description = "Enable deletion protection"
  type        = bool
  default     = false
}

variable "private_network" {
  description = "VPC self link for private IP"
  type        = string
  default     = null
}

variable "db_name" {
  description = "Initial database name"
  type        = string
}

variable "db_user" {
  description = "Database user"
  type        = string
}

variable "db_password" {
  description = "Database user password"
  type        = string
  sensitive   = true
}
