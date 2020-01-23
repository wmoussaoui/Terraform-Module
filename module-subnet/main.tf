resource "azurerm_subnet" "default" {
    name                 = var.name[count.index]
    address_prefix       = element(var.address_prefix, count.index) 
    resource_group_name  = element(var.resource_group_name, count.index)
    virtual_network_name = var.virtual_network_name
    count                = length(var.name)
}



#--------- create resource security group ---------
resource "azurerm_network_security_group" "sg" {
  name                = var.sg_name[count.index]
  location            = var.location_var
  resource_group_name = var.rg_name
  count                = length(var.sg_name)
  security_rule {
    name                       = "rule-swf-fff"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
    tags = {
        ApplicationID = var.applicationid_tags
        Environment = var.environnement_tags
        Version = var.version_tags
        Owner = var.owner_tags
        Department = var.departement_tags
        CostCenter = var.costcenter_tags
        Customer = var.customer_tags
        Project = var.projet_tags
  }
}   


