resource "azurerm_subnet" "default" {
    name                 = var.name[count.index]
    address_prefix       = var.address_prefix [element(var.address_space, count.index)] 
    resource_group_name  = element(var.resource_group_name, count.index)
    virtual_network_name = var.virtual_network.name
    count                = length(var.name)
}