output "network_id" {
  description = "The ID of the VPC network."
  value       = module.network.network_id
}

output "subnetwork_ids" {
  description = "The IDs of the subnetworks."
  value       = module.network.subnetwork_ids
}
