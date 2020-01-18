output "name"{
    value = azurerm_storage_account.storage-account-hub.*.name
}
output "id"{
    value = azurerm_storage_account.storage-account-hub.*.id
}