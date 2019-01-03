module "project" {
  source = "./modules/project"
}

module "vm" {
  source = "/modules/instance"
  project_id = "${module.project.project_id}"
}
