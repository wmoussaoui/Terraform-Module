provider "azurerm" {
  version = ">= 1.39.0"
}

terraform {
  required_version = ">= 0.12.0"
}

resource "azurerm_resource_group" "rg" {
  name     = var.name[count.index]
  location = var.location
  tags     = "${lookup(var.tags,var.name[count.index],"")}" #element(var.tags, count.index) 
  count    = length(var.name)

}
