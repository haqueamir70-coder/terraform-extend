output "resource_group_names" {
  description = "Resource groups created by this environment."
  value       = module.rg_aamir.names
}

output "virtual_network_names" {
  description = "Virtual networks created by this environment."
  value       = module.rg_aamirvnet.names
}

output "storage_account_names" {
  description = "Storage accounts created by this environment."
  value       = module.rg_aamirst.names
}
