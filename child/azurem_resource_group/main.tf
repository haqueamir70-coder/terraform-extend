resource "azurerm_resource_group" "rg_test" {
  for_each = var.rg_test7

  name     = each.value.name
  location = each.value.location
}
