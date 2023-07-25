terraform {
  required_providers {
    lxd = {
      source = "terraform-lxd/lxd"
      version = "1.9.1"
    }
  }
  backend "s3" {
    bucket = var.bucket
    key = "terraform.tfstate"
    endpoint = var.s3_endpoint
    access_key= var.s3_access_key
    secret_key= var.s3_secret_key
    region = "main"
    skip_credentials_validation = false
    skip_metadata_api_check = true
    skip_region_validation = true
    force_path_style = true
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
    port = var.lxc_port
  }

}


resource "lxd_container" "container" {
  name = var.lxc_name
  image = var.lxc_image
  ephemeral = var.lxc_ephemeral
  type = var.lxc_type

  config = {
    "boot.autostart" = var.lxc_autostart
  }


  limits = {
    cpu = var.lxc_cpu
    memory = var.lxc_memory
  }

}
