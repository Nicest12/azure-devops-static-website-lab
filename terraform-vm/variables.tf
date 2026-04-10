variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_name" {
  description = "Virtual Machine name"
  type        = string
}

variable "admin_username" {
  description = "VM admin username"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key for VM login"
  type        = string
}