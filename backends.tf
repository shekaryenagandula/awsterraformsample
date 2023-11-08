terraform {
  backend "http" {
    address="https://gitlab.com/api/v4/projects/51983496/terraform/state/terraform.tfstate"
    lock_address="https://gitlab.com/api/v4/projects/51983496/terraform/state/terraform.tfstate/lock"
    unlock_address="https://gitlab.com/api/v4/projects/51983496/terraform/state/terraform.tfstate/lock"
  }
}