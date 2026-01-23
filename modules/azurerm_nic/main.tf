resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = ["/subscriptions/d0238432-ce06-4b2f-a827-88d353f7f40c/resourceGroups/kundan-rg/providers/Microsoft.Network/networkInterfaces/kk-nic"]
    private_ip_address_allocation = "Dynamic"
  }
}

