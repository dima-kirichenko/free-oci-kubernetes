variable "compartment_id" {
  type        = string
  description = "The compartment to create the resources in"
  default     = "ocid1.tenancy.oc1..aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
}
variable "region" {
  type        = string
  description = "The region to provision the resources in"
  default     = "eu-frankfurt-1"
}
variable "ssh_public_key" {
  type        = string
  description = "The SSH public key to use for connecting to the worker nodes"
  default     = "ssh-rsa AAAA........"
}
variable "bastion_allowed_ips" {
  type        = list(string)
  description = "List of IP prefixes allowed to connect via bastion"
  default     = ["127.0.0.1/32"]
}
variable "ad_list" {
  type        = list
  description = "List of length 2 with the names of availability regions to use"
  default     = ["fJnH:EU-FRANKFURT-1-AD-1", "fJnH:EU-FRANKFURT-1-AD-2"]
}
variable "git_token" {
  description = "Git PAT"
  sensitive   = true
  type        = string
  default     = null
}
variable "git_url" {
  description = "Git repository URL"
  default     = "https://github.com/OWNER/REPO"
  type        = string
  nullable    = false
}

# Optional Flux configuration variables (override defaults from variables.tf if needed)
# variable "flux_registry" {
#   type        = string
#   description = "Flux registry URL"
#   default     = "ghcr.io"
# }
# variable "flux_version" {
#   type        = string  
#   description = "Flux version"
#   default     = "v2.4.0"
# }
# variable "git_path" {
#   type        = string
#   description = "Path in the Git repository to sync"
#   default     = "./flux"
# }
# variable "git_ref" {
#   type        = string
#   description = "Git reference (branch, tag, or commit) to sync"  
#   default     = "main"
# }
