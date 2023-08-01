provider "linode" {
  token = var.linode_token
}

resource "linode_instance" "nanode-fedora" {
  label = var.nanode-fedora-label
  image = var.nanode-fedora-image
  region = var.nanode-fedora-region
  type = var.nanode-fedora-type
  authorized_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyjtKItlRYwCMSP2f7CuxH2qvFEew6ceMG1hgYMGkfvl3BFx3mLeQiLydJZYu7pWyVF5s3YshzQ3dYIfUjh0t0leXE4wM/vFDk7YHZ5BNkQTNeysHhJD7RDGAQetE7SnVrqQ9pXAvZY9mqJ6STUGaMo2EvT9YekWeTZ39ACJfNZHd3amDhyXXHt/finux0VR/PKRF2NFIwGE7LEOpIAkFKnNVwMRbvdhYHUje0affVKuLRIloCVtFPjZgdnCcOPO02GT/y9hvapJidjadj831BUFGszBIUzroakQWIVUZ8lg9HK+r2HXqKQIr/rSiv/auXLcr9jlBCIrXVD1okBqwx5qIWqG6g1xtSzAGVtaIbCZ+c8kAeWKaw9sDh/SP9cQLhE9zKIbqllO0NxLm3foVVXle6t1q8us1wefIYE4KkWis4msrsCP3vBES1OBwsBFzYcwTKfcHP39vK66X4DASJ7unHjLeGJ4lXuI0/X7r/2sDhdl99f2y+vS8VBIFqPLc= andrew@leather-jacket"]
  root_pass = "testpass123@@@@12!"
}

resource "ansible_host" "nanode-fedora" {
  name = linode_instance.nanode-fedora.ip_address
  variables = {
    ansible_user = "root"
    ansible_ssh_private_key_file = "./id_rsa"
    ansible_python_interpreter = "/usr/bin/python3"
  }
}
