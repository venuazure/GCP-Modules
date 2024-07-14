module "vpc-one" {
  source       = "../gcpModules/Vnet"
  network-name = "vnet-network-1"
  gcp-project-name = "datascience-dev-425204"
}

module "subnet-one" {
  source                   = "../gcpModules/Subnet"
  vnet-name                = module.vpc-one.network-name
  subnetwork-name          = "test-subnetwork-1"
  subnetwork-ip_cidr_range = "10.2.0.0/16"
  subnetwork-region        = "us-central1"
}
