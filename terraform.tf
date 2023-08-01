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
    ansible = {
      source = "ansible/ansible"
      version = "1.1.0"
    }
  }
}
