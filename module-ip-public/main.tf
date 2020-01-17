resource "azurerm_public_ip" "public-ip" {
  name                = var.name[count.index]
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.sku
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  ip_version          =  var.ip_version
  count               = length(var.name)
  tags                = var.tags 
}
