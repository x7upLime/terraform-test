terraform {
  cloud {
    organization = "andrewdomain"
    workspaces {
      name = "learn-terraform-cloud"
    }
  }

  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.5.2"
    }
  }
}
