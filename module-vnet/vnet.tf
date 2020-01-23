resource "azurerm_virtual_network" "virtual_network" {
  address_space       = element(var.address_space, count.index) #"${var.address_space[count.index]}"
  location            = "${var.location}"
  name                = var.name[count.index]
  resource_group_name = element(var.resource_group_name, count.index)
  tags                = element(var.tags, count.index)
  count               = length(var.name)
}
