resource "azurerm_subnet" "default" {
    name                 = var.name[count.index]
    address_prefix       = element(var.address_prefix, count.index) 
    resource_group_name  = element(var.resource_group_name, count.index)
    virtual_network_name = var.virtual_network_name
    count                = length(var.name)
    network_security_group_id = "${element(azurerm_network_security_group.sg.*.id, count.index)}"  #element(var.sg_name, count.index)
    
}



#--------- create resource security group ---------
#
resource "azurerm_network_security_group" "sg" {
  name                = var.sg_name[count.index]
  location            = var.location_var
  resource_group_name = element(var.sg_resource_group_name, count.index)
  count                = length(var.sg_name) 
  tags                     = element(var.tags, count.index)
    
}   

#resource "azurerm_network_security_rule" "custom_rules" {
#  count                       = length(var.custom_rules)
 # name                        = lookup(var.custom_rules[count.index], "name", "default_rule_name")
  #priority                    = lookup(var.custom_rules[count.index], "priority")
  #direction                   = lookup(var.custom_rules[count.index], "direction", "Any")
  #access                      = lookup(var.custom_rules[count.index], "access", "Allow")
  #protocol                    = lookup(var.custom_rules[count.index], "protocol", "*")
  #source_port_ranges          = split(",", replace(lookup(var.custom_rules[count.index], "source_port_range", "*"), "*", "0-65535"))
  #destination_port_ranges     = split(",", replace(lookup(var.custom_rules[count.index], "destination_port_range", "*"), "*", "0-65535"))
  #source_address_prefix       = lookup(var.custom_rules[count.index], "source_address_prefix", "*")
  #destination_address_prefix  = lookup(var.custom_rules[count.index], "destination_address_prefix", "*")
  #description                 = lookup(var.custom_rules[count.index], "description", "Security rule for ${lookup(var.custom_rules[count.index], "name", "default_rule_name")}")
  #resource_group_name         = element(var.rule_resource_group_name, count.index)
  #network_security_group_name =  "${azurerm_network_security_group.sg.*.name}"
#}

#---- create resource security group association ------

resource "azurerm_subnet_network_security_group_association" "ass" {
    
  count                     = length(var.sg_name)  
  subnet_id                 = "${azurerm_subnet.default.*.id}"        #"${element(azurerm_subnet.default.*.id, count.index)}" 
  network_security_group_id = "${element(azurerm_network_security_group.sg.*.id, count.index)}" 
}




