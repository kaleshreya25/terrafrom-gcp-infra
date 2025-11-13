variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "static_ips" {
  description = "List of static IP names"
  type        = list(string)
}
