# Azure DevOps Service Connection Docker Registry Terraform module

Terraform module which creates Service Connection Docker Registry in Azure DevOps

## Usage

```terraform
module "serviceendpoint_dockerregistry" {
  source = "git::https://github.com/pressreader/terraform-azure-devops-serviceendpoint-dockerregistry.git?ref=v1.0.0"

  project_id = "ID of a project"

  service_endpoint_name = "Name of a service connection"
  description           = "Description of the service connection" # Defaults to Managed by Terraform

  docker_registry = "URL of a docker registry" # Defaults to https://index.docker.io/v1/
  docker_username = "Username"
  docker_password = "Password"
  docker_email    = "Email"                    # Defaults to null
  registry_type   = "DockerHub"                # Defaults to DockerHub
}
```