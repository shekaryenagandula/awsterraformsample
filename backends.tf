terraform {
  backend "http" {
    address="https://gitlab.com/api/v4/projects/51982406/terraform/state/terraform.tfstate"
    lock_address="https://gitlab.com/api/v4/projects/51982406/terraform/state/terraform.tfstate/lock"
    unlock_address="https://gitlab.com/api/v4/projects/51982406/terraform/state/terraform.tfstate/lock"
  }  
}

