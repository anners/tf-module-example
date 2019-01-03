variable "location" {
  default = "us-central"
}

variable "region" {
  default = "us-central1"
}

variable "region_zone" {
  default = "us-central1-f"
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
