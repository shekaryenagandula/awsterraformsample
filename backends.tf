terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }

  backend "http" {
    address="https://gitlab.com/api/v4/projects/51982406/terraform/state/terraform.tfstate"
    lock_address="https://gitlab.com/api/v4/projects/51982406/terraform/state/terraform.tfstate/lock"
    unlock_address="https://gitlab.com/api/v4/projects/51982406/terraform/state/terraform.tfstate/lock"
}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
