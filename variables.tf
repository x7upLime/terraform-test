variable "nanode-fedora-region" {
  description = "the region we're putting that particular box"
  default = "eu-central" // which is Frankfurt - DE
}

variable "nanode-fedora-type" {
  description = "the type of box we want"
  default = "g6-nanode-1"
}

variable "nanode-fedora-label" {
  description = "linode label"
  default     = "fedoraBox-nanode"
}

variable "nanode-fedora-image" {
  description = "image we're using for that nanode"
  default     = "linode/Fedora38"
}