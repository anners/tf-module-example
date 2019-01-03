variable "project_id" { default = "" }
variable "zone" { default = "" }

resource "google_compute_instance" "gce" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "${var.zone}"
  project      = "${var.project_id}"

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-9"
    }
  }

  scratch_disk { }

  network_interface {
    network = "default"

    access_config { }
  }

  metadata { foo = "bar" }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }

}
