provider "google" {
  region = "${var.region}"
  credentials = "${file("file.json")}"
}

module "project" {
  source          = "./modules/project"
  org_id          = "${var.org_id}"
  billing_account = "${var.billing_account}"
  project_name    = "testing"
}

module "vm" {
  source        = "./modules/instance"
  zone          = "${var.region_zone}"
  project_id    = "${module.project.project_id}"
}
