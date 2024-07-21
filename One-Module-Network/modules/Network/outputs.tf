output "network_id" {
  description = "The ID of the VPC network."
  value       = google_compute_network.vpc_network.id
}

output "subnetwork_ids" {
  description = "The IDs of the subnetworks."
  value       = [for subnetwork in google_compute_subnetwork.subnetwork : subnetwork.id]
}
