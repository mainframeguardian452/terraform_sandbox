resource "proxmox_virtual_environment_vm" "sparkman" {
  acpi                                 = true
  bios                                 = "seabios"
  boot_order                           = ["scsi0", "ide2", "net0"]
  delete_unreferenced_disks_on_destroy = true
  description                          = null
  hook_script_file_id                  = null
  keyboard_layout                      = "en-us"
  kvm_arguments                        = null
  mac_addresses                        = ["BC:24:11:99:F2:11"]
  machine                              = null
  migrate                              = false
  name                                 = "SPARKMAN"
  network_device = [{
    bridge       = "vmbr0"
    disconnected = false
    enabled      = true
    firewall     = true
    mac_address  = "BC:24:11:99:F2:11"
    model        = "virtio"
    mtu          = 0
    queues       = 0
    rate_limit   = 0
    trunks       = ""
    vlan_id      = 0
  }]
  node_name           = "galaxyHost"
  on_boot             = false
  pool_id             = null
  protection          = false
  purge_on_destroy    = true
  reboot              = false
  reboot_after_update = true
  scsi_hardware       = "virtio-scsi-single"
  started             = false
  stop_on_destroy     = false
  tablet_device       = true
  tags                = []
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 103
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = 2
    flags        = []
    hotplugged   = 0
    limit        = 0
    numa         = false
    sockets      = 1
    type         = "x86-64-v2-AES"
    units        = 1024
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = "local-lvm"
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    path_in_datastore = "vm-103-disk-0"
    queues            = 0
    replicate         = true
    serial            = null
    size              = 20
    ssd               = false
  }
  memory {
    dedicated      = 4096
    floating       = 0
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
}

resource "proxmox_virtual_environment_vm" "geminiman" {
  acpi                                 = true
  bios                                 = "seabios"
  boot_order                           = ["scsi0", "net0"]
  delete_unreferenced_disks_on_destroy = true
  description                          = null
  hook_script_file_id                  = null
  keyboard_layout                      = "en-us"
  kvm_arguments                        = null
  mac_addresses                        = ["BC:24:11:FC:8F:08"]
  machine                              = null
  migrate                              = false
  name                                 = "GEMINIMAN"
  network_device = [{
    bridge       = "vmbr0"
    disconnected = false
    enabled      = true
    firewall     = true
    mac_address  = "BC:24:11:FC:8F:08"
    model        = "virtio"
    mtu          = 0
    queues       = 0
    rate_limit   = 0
    trunks       = ""
    vlan_id      = 0
  }]
  node_name           = "galaxyHost"
  on_boot             = true
  pool_id             = null
  protection          = false
  purge_on_destroy    = true
  reboot              = false
  reboot_after_update = true
  scsi_hardware       = "virtio-scsi-single"
  started             = true
  stop_on_destroy     = false
  tablet_device       = true
  tags                = []
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 102
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = 2
    flags        = []
    hotplugged   = 0
    limit        = 0
    numa         = false
    sockets      = 1
    type         = "x86-64-v2-AES"
    units        = 1024
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = "local-lvm"
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    path_in_datastore = "vm-102-disk-0"
    queues            = 0
    replicate         = true
    serial            = null
    size              = 20
    ssd               = false
  }
  memory {
    dedicated      = 4096
    floating       = 0
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
}
