terraform {
  required_version = ">= 1.5.0"

  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.73"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "proxmox" {
  endpoint  = "https://192.168.124.80:8006"
  api_token = var.proxmox_api_token
  insecure  = true # self-signed cert on homelab Proxmox
}

provider "docker" {
  host     = "ssh://jadmin@192.168.124.92"
  ssh_opts = ["-i", "~/.ssh/id_ed25519", "-o", "StrictHostKeyChecking=no"]
}
