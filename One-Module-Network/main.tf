
provider "google" {

  project = var.project-name
  // project = "test-project-1-430013"
  // region      = "us-central1"
  credentials = file("")
}

module "network" {
  source       = "./modules/Network"
  network_name = var.network-name
  // network_name = "vpc-network-2"
  subnetworks = [{ name = "subnetwork-1", ip_cidr_range = "10.0.1.0/24", region = "us-central1", private_ip_google_access = true }]
}
