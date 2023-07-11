variable "project_id" {
  description = "Azure DevOps Project ID"
  type        = string
}

variable "service_endpoint_name" {
  description = "The name you will use to refer to this service connection in task inputs."
  type        = string
}

variable "description" {
  description = "The Service Endpoint description. Defaults to Managed by Terraform."
  type        = string
  default     = "Managed by Terraform"
}

variable "docker_registry" {
  description = "The URL of the Docker registry. Defaults to https://index.docker.io/v1/."
  type        = string
  default     = "https://index.docker.io/v1/"
}

variable "docker_username" {
  description = "The identifier of the Docker account user."
  type        = string
}

variable "docker_password" {
  description = "The password for the account user identified above."
  type        = string
}

variable "docker_email" {
  description = "The email for Docker account user. Defaults to null."
  type        = string
  default     = null
}

variable "registry_type" {
  description = "Can be DockerHub or Others. Defaults to DockerHub."
  type        = string
  default     = "DockerHub"

  validation {
    condition     = contains(["DockerHub", "Others"], var.registry_type)
    error_message = "The registry_type value must be one of DockerHub or Others."
  }
}