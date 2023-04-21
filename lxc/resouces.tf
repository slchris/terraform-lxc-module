terraform {
  required_providers {
    lxd = {
      source = "terraform-lxd/lxd"
      version = "1.9.1"
    }
  }
}


provider "lxd" {
  generate_client_certificates = true
  accept_remote_certificate    = true


  lxd_remote {
    name     = "lxc"
    scheme   = "https"
    address  = var.lxc_addresses
    password = var.lxc_password
    default  = true
  }

}


resource "lxd_container" "container" {
  name = var.lxc_name
  image = var.lxc_image
  ephemeral = var.lxc_ephemeral
  type = var.lxc_type

  config = {
    "boot.autostart" = var.lxc_autostart
    "security.privileged" = var.lxc_privileged
  }


  limits = {
    cpu = var.lxc_cpu
    memory = var.lxc_memory
  }

}
