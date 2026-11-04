output "ids" {
  description = "Storage account IDs keyed by logical name."
  value       = { for key, account in azurerm_storage_account.st_amir : key => account.id }
}

output "names" {
  description = "Storage account names keyed by logical name."
  value       = { for key, account in azurerm_storage_account.st_amir : key => account.name }
}
