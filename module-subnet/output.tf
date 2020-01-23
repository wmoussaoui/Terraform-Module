output "id" {
  value       = azurerm_subnet.default.*.id
  description = "The subnet ID."
}

output "name" {
  value       = azurerm_subnet.default.*.name
  description = "The name of the subnet."
}
