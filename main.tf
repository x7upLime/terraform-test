provider "linode" {
  token = ${var.Linode_token}
}

resource "linode_instance" "nanode-fedora" {
  label = var.nanode-fedora-label
  image = var.nanode-fedora-image
  region = var.nanode-fedora-region
  type = var.nanode-fedora-type
}
