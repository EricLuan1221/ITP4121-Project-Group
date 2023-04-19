module "azure" {
  source          = "./azure"
  subscription_id = var.subscription_id
  appId           = var.appId
  password        = var.password
  location        = var.location
}

module "gcp" {
  source           = "./gcp"
  region           = var.region
  project_id       = var.project_id
  credentials_path = "/gcp/a02-terraform-280561c9be83.json"
}
variable "subscription_id" {
  description = "Azure subscription id"
}

variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
}

variable "location" {
  description = "name of the location of rg"
  default     = "East Asia"
}

variable "project_id" {
  description = "project id"
}

variable "credentials_path" {
  type    = string
  default = "a02-terraform-280561c9be83.json"
}

variable "region" {
  description = "region"
  default     = "asia-east2"
}

module "aws" {
    source           = "./aws"
    region           = var.region
    access_key       = var.access_key
    secret_key       = var.secret_key
}