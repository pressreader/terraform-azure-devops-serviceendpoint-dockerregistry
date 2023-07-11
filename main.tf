resource "azuredevops_serviceendpoint_dockerregistry" "main" {
  project_id            = var.project_id
  service_endpoint_name = var.service_endpoint_name
  description           = var.description
  docker_registry       = var.docker_registry
  docker_username       = var.docker_username
  docker_password       = var.docker_password
  docker_email          = var.docker_email
  registry_type         = var.registry_type
}