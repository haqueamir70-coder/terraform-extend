variable "qstha" {
  description = "Storage accounts to create, keyed by a stable logical name."
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
  }))
}
