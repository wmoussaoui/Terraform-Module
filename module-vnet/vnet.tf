resource "azurerm_virtual_network" "virtual_network" {
  address_space       = "${var.address_spaces[count.index]}"
  location            = "${var.location}"
  name                = var.name[count.index]
  resource_group_name = element(var.resource_group_name, count.index)
  tags                = element(var.tags, count.index)
  count               = length(var.name)
}
