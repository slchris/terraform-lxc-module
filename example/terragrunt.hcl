terraform {
  source = "git::https://github.com/slchris/terraform-lxc-module.git//lxc?ref=HEAD"
}



inputs = {
  lxc_addresses = "192.168.100.2"
  
  lxc_name = "demo"
  lxc_image = "images:ubuntu/jammy/cloud"
  lxc_type = "virtual-machine"
  
  lxc_ephemeral = false
  lxc_autostart = false 

  lxc_cpu = 2
  lxc_memory = "4096MiB" 
}
