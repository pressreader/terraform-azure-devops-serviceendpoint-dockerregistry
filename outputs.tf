output "service_endpoint_id" {
  value = azuredevops_serviceendpoint_dockerregistry.main.id
}

output "service_endpoint_name" {
  value = azuredevops_serviceendpoint_dockerregistry.main.service_endpoint_name
}

output "service_endpoint_project_id" {
  value = azuredevops_serviceendpoint_dockerregistry.main.project_id
}
