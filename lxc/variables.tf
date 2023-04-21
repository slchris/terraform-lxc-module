### Server Configurations ###

variable "lxc_addresses" {
  default     = "192.168.100.2"
  description = "host ip of the lxc server"
  type        = string
}


variable "lxc_password" {
  description = "password of the lxc server"
  type        = string
}



variable "lxc_name" {
  description = "lxc container name"
  type        = string
}

variable "lxc_image" {
  description = "lxc image name"
  type        = string
}



variable "lxc_ephemeral" {
  description = "lxc ephemeral name"
  type        = bool
}


variable "lxc_type" {
  description = "lxc type name"
  type        = string
}

variable "lxc_autostart" {
  description = "lxc autostart name"
  type        = bool
}




variable "lxc_privileged" {
  description = "privileged option"
  type        = number
}


variable "lxc_cpu" {
  description = "lxc cpu limitis"
  type        = number
}

variable "lxc_memory" {
  description = "lxc memory limitis"
  type        = string
}



