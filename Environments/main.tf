module "azurermrg" {
  source      = "../modules/azurerm_resource_group"
  rg_name     = var.rg_name
  rg_location = var.rg_location
}

module "vnet" {
  depends_on         = [module.azurermrg]
  source             = "../modules/azurerm_virtual_network"
  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space
  rg_name            = var.rg_name
  rg_location        = var.rg_location
}

module "subnet" {
  depends_on            = [module.vnet]
  source                = "../modules/azurerm_subnet"
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  vnet_name             = var.vnet_name
  rg_name               = var.rg_name

}

module "nic" {
  depends_on  = [module.subnet]
  source      = "../modules/azurerm_nic"
  nic_name    = var.nic_name
  rg_name     = var.rg_name
  rg_location = var.rg_location
}

module "vm" {
  depends_on        = [module.nic]
  source            = "../modules/azurerm_virtual_machine"
  vm_name           = var.vm_name
  vm_size           = var.vm_size
  admin_username    = var.admin_username
  admin_password    = var.admin_password
  rg_name           = var.rg_name
  rg_location       = var.rg_location
  publisher         = var.publisher
  offer             = var.offer
  sku               = var.sku
  vm_version        = var.vm_version
  disk_name         = var.disk_name
  caching           = var.caching
  create_option     = var.create_option
  managed_disk_type = var.managed_disk_type
  computer_name     = var.computer_name

}
