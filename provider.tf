provider "google" {
  region      = var.gcp_region
  credentials = var.gcp_credentials
  project     = var.gcp_project_id
  zone        = var.region_zone
}

