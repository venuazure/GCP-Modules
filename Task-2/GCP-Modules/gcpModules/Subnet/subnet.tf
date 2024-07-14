resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {

  name = var.subnetwork-name
  //name          = "test-subnetwork"

  ip_cidr_range = var.subnetwork-ip_cidr_range
  // ip_cidr_range = "10.2.0.0/16"

  region = var.subnetwork-region

  network = var.vnet-name
  //google_compute_network.vpc-network-1.self_link

  depends_on = [var.vnet-name]
}
