variable "proxmox_api_token" {
  description = "Proxmox API token — format: 'user@realm!tokenid=secret'"
  type        = string
  sensitive   = true
}
