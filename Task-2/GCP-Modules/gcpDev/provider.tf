terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.37.0"
    }
  }
}

provider "google" {
  //project     = "datascience-dev-425204"
  credentials = file("D:/GCP/GCP-Modules/serviceAccount/datascience-dev-425204-987b15087902.json")
}