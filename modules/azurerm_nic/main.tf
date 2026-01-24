resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = ["/subscriptions/c46beff3-d22c-4a6f-82a7-693fd94c69c4/resourceGroups/kundan-rg/providers/Microsoft.Network/virtualNetworks/kk-vnet/subnets/kk-subnet"]
    private_ip_address_allocation = "Dynamic"
  }
}
