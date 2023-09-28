provider "aws" {
  region = "us-east-1"
}

module "uni-network-2" {
  source  = "app.terraform.io/arni/uni-network-2/aws"
  version = "1.0.0"

  cidr        = var.cidr
  environment = var.environment
  project     = var.project
}

variable "cidr" {
  type = string
}

variable "environment" {
  type = string
}

variable "project" {
  type = string
}
