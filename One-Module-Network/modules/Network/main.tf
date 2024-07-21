resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  count                    = length(var.subnetworks)
  name                     = var.subnetworks[count.index].name
  ip_cidr_range            = var.subnetworks[count.index].ip_cidr_range
  region                   = var.subnetworks[count.index].region
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = var.subnetworks[count.index].private_ip_google_access
}

/*output "network_id" {
  value = google_compute_network.vpc_network.id
}

output "subnetwork_ids" {
  value = [for subnetwork in google_compute_subnetwork.subnetwork : subnetwork.id]
}*/
