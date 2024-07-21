/*
variable "project_id" {
  description = "The GCP project ID."
  type        = string
  default = "test-project-1-430013"
}

variable "region" {
  description = "The GCP region."
  type        = string
  default = "us-central1"
}

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
  default = [
    {
      name                     = "subnetwork-1"
      ip_cidr_range            = "10.0.1.0/24"
      region                   = "us-central1"
      private_ip_google_access = true
    },
    {
      name                     = "subnetwork-2"
      ip_cidr_range            = "10.0.2.0/24"
      region                   = "us-central1"
      private_ip_google_access = true
    }
  ]
}


*/

variable "network-name" {
  type        = string
  description = "The name of the VPC network."
}

variable "project-name" {
  description = "The GCP project ID."
  type        = string
  default     = "test-project-1-430013"
}

