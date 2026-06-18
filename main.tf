data "proxmox_virtual_environment_nodes" "available" {}

data "proxmox_virtual_environment_vms" "all" {}

import {
  id = "galaxyHost/102"
  to = proxmox_virtual_environment_vm.geminiman
}

import {
  id = "galaxyHost/103"
  to = proxmox_virtual_environment_vm.sparkman
}
