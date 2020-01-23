resource "azurerm_virtual_network" "virtual_network" {
  address_space       = ["${var.address_space}"]
  location            = "${var.location}"
  name                = "${var.subscription_name}-${var.environment}-vnet"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"
  tags                = "${merge(map("serviceName", "${var.subscription_name}", "environment", "${var.environment}"), var.tags)}"
}
