resource "azurerm_virtual_network" "vnet" {
  name           = "${var.network_name}"
  location       = "${var.region}"
  resource_group_name = "${azurerm_resource_group.resgroup.name}"
  dns_servers     = ["8.8.8.8", "8.8.4.4"]
  address_space   = ["10.0.0.0/16"]
}

resource azurerm_subnet "subnet" { 
  name            = "${var.network_name}-subnetwork"
  resource_group_name = "${azurerm_resource_group.resgroup.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  address_prefix  = "10.0.0.0/24"
}
