output "public-ip"{
    value = azurerm_public_ip.public-ip.*.id
}