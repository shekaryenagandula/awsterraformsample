terraform {
  backend "http" {
    address="https://gitlab.com/api/v4/projects/51983496/terraform/state/default"
    lock_address="https://gitlab.com/api/v4/projects/51983496/terraform/state/default/lock"
    unlock_address="https://gitlab.com/api/v4/projects/51983496/terraform/state/default/lock"
}
}

