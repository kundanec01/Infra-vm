variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "rg_location" {
  description = "Resource Group Location"
  type        = string
}

variable "rg_name" {
  description = "Resource Group Name"
  type        = string
}

variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
}

variable "publisher" {
  description = "Image Publisher"
  type        = string
}

variable "offer" {
  description = "Image Offer"
  type        = string
}

variable "sku" {
  description = "Image SKU"
  type        = string
}

variable "vm_version" {
  description = "Image Version"
  type        = string
}

variable "disk_name" {
  description = "OS Disk Name"
  type        = string
}

variable "caching" {
  description = "OS Disk Caching"
  type        = string
}

variable "create_option" {
  description = "OS Disk Create Option"
  type        = string
}

variable "managed_disk_type" {
  description = "Managed Disk Type"
  type        = string
}

variable "computer_name" {
  description = "Computer Name"
  type        = string
}

variable "admin_username" {
  description = "Admin Username"
  type        = string
}

variable "admin_password" {
  description = "Admin Password"
  type        = string
}