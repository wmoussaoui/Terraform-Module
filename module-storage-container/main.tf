resource "azurerm_storage_container" "storage-container-hub" {
  name                  = var.name[count.index]
  storage_account_name  =  "${element(var.storage_account_name, count.index)}"
  container_access_type = var.container_access_type
  count    = length(var.name)
  
}
