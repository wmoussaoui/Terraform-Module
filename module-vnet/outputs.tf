

output "vnet_name" {
  value = "${azurerm_virtual_network.virtual_network.*.name}"
}

output "address_space" {
  value = "${azurerm_virtual_network.virtual_network.*.address_space}"
}


output "vnet_id" {
  value = "${azurerm_virtual_network.virtual_network.*.id}"
}
