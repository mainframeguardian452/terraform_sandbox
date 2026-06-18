# Homelab Infrastructure as Code

Terraform project managing a homelab environment running on Proxmox VE. Provisions and configures compute and containerized workloads using infrastructure as code principles.

## Stack

| Layer | Technology |
|---|---|
| Hypervisor | Proxmox VE 8.4 (Dell Optiplex) |
| Storage | TrueNAS Scale (Dell PowerEdge T320) |
| IaC | Terraform with `bpg/proxmox` and `kreuzwerker/docker` providers |
| Container host | GEMINIMAN (Debian VM, 2 vCPU, 4GB RAM) |

## Architecture

```
MacBook (Terraform)
  │
  ├── Proxmox API (HTTPS) ──► galaxyHost:8006
  │                               ├── GEMINIMAN (102) ← Docker workloads
  │                               └── SPARKMAN  (103) ← reserved
  │
  └── Docker API (SSH) ──────► GEMINIMAN:22
                                    └── homelab network
                                            └── nginx:alpine → :8080
```

## What Terraform manages

- **Proxmox VMs** — GEMINIMAN and SPARKMAN imported into state; lifecycle, CPU, memory, and boot behaviour managed as code
- **Docker network** — isolated `homelab` bridge network on GEMINIMAN
- **Docker containers** — Nginx serving on port 8080

## Prerequisites

- Terraform >= 1.5.0
- SSH key pair at `~/.ssh/id_ed25519` authorized on GEMINIMAN
- Proxmox API token with VM management permissions

## Usage

```bash
# Copy and fill in credentials
cp terraform.tfvars.example terraform.tfvars

# Download providers
terraform init

# Preview changes
terraform plan

# Apply
terraform apply
```

## Roadmap

- [ ] Application stack — Nginx reverse proxy + app container + database with inter-container networking
- [ ] Persistent storage — NFS-backed Docker volumes sourced from TrueNAS `apps` dataset
- [ ] CI/CD — GitHub Actions pipeline: `terraform plan` on PRs, `terraform apply` on merge to main
