output "ids" {
  description = "Virtual network IDs keyed by logical name."
  value       = { for key, vnet in azurerm_virtual_network.example : key => vnet.id }
}

output "names" {
  description = "Virtual network names keyed by logical name."
  value       = { for key, vnet in azurerm_virtual_network.example : key => vnet.name }
}
