resource "azurerm_storage_container" "storage-container-hub" {
  name                  = var.name[count.index]
  storage_account_name  = var.storage_account_name
  container_access_type = var.container_access_type
  count    = length(var.name)
  
}
