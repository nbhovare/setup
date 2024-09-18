# Declare variables Block for .tfvars

variable "location" {
    type=string
    description="Location/Region of Resources"
    default="southindia"
}

variable "resource_group" {
    type=string
    description="Resouce Group to Deploy to"
}

variable "vm_name" {
    type=string
    description="Virtual Machine Name"
}

variable "ssh_keys" {
    type=string
    description="SSH Key Value Pair name in Azure"
}

variable "deploy_linux_part" {
    type=boolean
    description="Do we deploy linux service folder"
    default=false
}

variable "deploy_windows_part" {
    type=boolean
    description="Do we deploy windows service folder "
    default=false
}