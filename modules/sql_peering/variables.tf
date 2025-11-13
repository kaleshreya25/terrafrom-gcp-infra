variable "project_id" {
  description = "GCP project ID"
  type        = string
}

/*variable "region" {
  description = "Region for the private IP allocation"
  type        = string
}*/

variable "vpc_network_self_link" {
  description = "Self link of the VPC network"
  type        = string
}

variable "peering_range_name" {
  description = "Name of the allocated IP range for peering"
  type        = string
}

variable "prefix_length" {
  description = "Prefix length for the IP range"
  type        = number
  default     = 16
}

variable "peering_range_address" {
  description = "Base IP address for private IP range allocation for SQL peering"
  type        = string
}
