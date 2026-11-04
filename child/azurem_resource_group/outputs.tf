output "ids" {
  description = "Resource group IDs keyed by logical name."
  value       = { for key, resource_group in azurerm_resource_group.rg_test : key => resource_group.id }
}

output "names" {
  description = "Resource group names keyed by logical name."
  value       = { for key, resource_group in azurerm_resource_group.rg_test : key => resource_group.name }
}
