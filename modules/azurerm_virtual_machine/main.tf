resource "azurerm_virtual_machine" "vm1" {
  name                  = var.vm_name
  location              = var.rg_location
  resource_group_name   = var.rg_name
  network_interface_ids = ["/subscriptions/c46beff3-d22c-4a6f-82a7-693fd94c69c4/resourceGroups/kundan-rg/providers/Microsoft.Network/networkInterfaces/kk-nic"]
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.vm_version
  }
  storage_os_disk {
    name              = var.disk_name
    caching           = var.caching
    create_option     = var.create_option
    managed_disk_type = var.managed_disk_type
  }
  os_profile {
    computer_name  = var.computer_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}