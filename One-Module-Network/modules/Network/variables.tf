variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnetworks" {
  description = "List of subnetwork configurations."
  type = list(object({
    name                     = string
    ip_cidr_range            = string
    region                   = string
    private_ip_google_access = bool
  }))
}
