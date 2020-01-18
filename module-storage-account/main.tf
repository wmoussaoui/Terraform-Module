resource "azurerm_storage_account" "storage-account-hub" {
  name                     = var.name[count.index]
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  enable_advanced_threat_protection = true
  count    = length(var.name)
  tags                     = var.tags 
  }

