output "proxmox_node_names" {
  description = "Proxmox node name(s) — needed for resource configuration"
  value       = data.proxmox_virtual_environment_nodes.available.names
}

output "virtual_machines" {
  description = "All VMs visible to Terraform"
  value = [
    for vm in data.proxmox_virtual_environment_vms.all.vms : {
      id   = vm.vm_id
      name = vm.name
      node = vm.node_name
    }
  ]
}
