terraform {
  required_version = ">= 1.5.0"

  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.73"
    }
  }
}

provider "proxmox" {
  endpoint  = "https://192.168.124.80:8006"
  api_token = var.proxmox_api_token
  insecure  = true # self-signed cert on homelab Proxmox
}
