resource "random_id" "id" {
  byte_length = 8
}

resource "google_project" "example_project" {
  name            = var.project_name
  project_id      = "${var.project_name}-${random_id.id.hex}"
  billing_account = var.billing_account
  org_id          = var.org_id
}

resource "google_project_services" "services" {
  project = "${google_project.example_project.project_id}"

  services = [
    "compute.googleapis.com",
    "oslogin.googleapis.com",
  ]
}



output "project_id" {
  value = "${google_project.example_project.project_id}"
}
