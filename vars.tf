variable "location" {
  default = "us-west"
}

variable "region" {
  default = "us-west1"
}

variable "region_zone" {
  default = "us-west1-b"
}

variable "org_id" {
  description = "The ID of the Google Cloud Organization."
  default     = ""
}

variable "billing_account" {
  description = "The ID of the associated billing account (optional)."
  default     = ""
}

variable "credentials_file_path" {
  description = "Location of the credentials to use."
  default     = ""
}

variable "gcp_project_id" {
  description = "The GCP Project ID where all resources will be launched."
}

variable "gcp_credentials" {
  description = "The GCP credentials."
}

variable "gcp_region" {
  default     = "us-west1"
  description = "The region in which all GCP resources will be launched."
}

