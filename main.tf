#provider "google" {
#  region = "${var.region}"
#  credentials = "${file("file.json")}"
#}

module "project" {
  source = "./modules/project"

  # To integrate with a pipeline, use the version control url.
  # source    = "github.com/stoffee/tf-module-example//modules/project"
  org_id          = var.org_id
  billing_account = var.billing_account
  project_name    = "cd-testing"
}

module "vm" {
  # To integrate with a pipeline, use the version control url.
  # source    = "github.com/stoffee/tf-module-example//modules/instance"
  source     = "./modules/instance"
  zone       = var.region_zone
  project_id = module.project.project_id
}
