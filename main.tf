module "azure" {
  source          = "./azure"
  appId           = var.appId
  password        = var.password
  location        = var.location
}

module "gcp" {
  source           = "./gcp"
  region           = var.region
  project_id       = var.project_id
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
    AWS_ACCESS_KEY_ID = var.AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
}

variable "AWS_ACCESS_KEY_ID" {
  description = "value of AWS_ACCESS_KEY_ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "value of AWS_SECRET_ACCESS_KEY"
}