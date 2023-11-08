terraform {
  backend "http" {
    address="https://gitlab.com/api/v4/projects/51982406/terraform/state/default"
    lock_address="https://gitlab.com/api/v4/projects/51982406/terraform/state/default/lock"
    unlock_address="https://gitlab.com/api/v4/projects/51982406/terraform/state/default/lock"
  }  
}

