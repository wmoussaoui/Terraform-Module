

#--------- create resource security group ---------


resource "azurerm_network_security_group" "sg" {
  name                = var.sg_name[count.index]
  location            = var.location_var
  resource_group_name = element(var.sg_resource_group_name, count.index)
  count                = length(var.sg_name) 
  tags                     = element(var.tags, count.index)
    
}   

