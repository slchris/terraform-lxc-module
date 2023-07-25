### Server Configurations ###

variable "lxc_addresses" {
  default     = "192.168.100.2"
  description = "host ip of the lxc server"
  type  = string
}

variable "lxc_port" {
  default     = "8443"
  description = "port of the lxc server"
  type  = string
}



variable "lxc_password" {
  description = "password of the lxc server"
  type = string
}



variable "lxc_name" {
  description = "lxc container name"
  type = string
}

variable "lxc_image" {
  description = "lxc image name"
  type = string
}



variable "lxc_ephemeral" {
  description = "lxc ephemeral name"
  type = bool
}


variable "lxc_type" {
  description = "lxc type name"
  type = string
}

variable "lxc_autostart" {
  description = "lxc autostart name"
  type = bool
}



variable "lxc_cpu" {
  description = "lxc cpu limitis"
  type = number
}

variable "lxc_memory" {
  description = "lxc memory limitis"
  type = string
}

variable "bucket" {
  description = "s3 bucket"
  type = string
}


variable "s3_endpoint" {
  description = "s3 backend"
  type = string
}

variable "s3_access_key" {
  description = "s3 access key"
  type = string
}

variable "s3_secret_key" {
  description = "s3 secret key"
  type = string
}
