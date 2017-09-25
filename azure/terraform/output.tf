output "subnet_id" {
  value = "${azurerm_subnet.subnet.id}"
}

output "network_id" {
  value = "${azurerm_virtual_network.vnet.id}"
}

output "network_name" {
  value = "${azurerm_virtual_network.vnet.name}"
}
