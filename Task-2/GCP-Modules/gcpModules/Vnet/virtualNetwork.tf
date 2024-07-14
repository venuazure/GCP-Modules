resource "google_compute_network" "vpc-network-1" {
   //project = "datascience-dev-425204"
    project = var.gcp-project-name
    // name                    = "first-vpc-network"
  name                    = var.network-name
  auto_create_subnetworks = false
}
