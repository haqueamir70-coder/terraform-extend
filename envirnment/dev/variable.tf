variable "rg_test_new" {
  description = "Resource groups to create, keyed by a stable logical name."
  type = map(object({
    name     = string
    location = string
  }))
}

variable "qsthas" {
  description = "Storage accounts to create, keyed by a stable logical name."
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "vnet1" {
  description = "Virtual networks to create, keyed by a stable logical name."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = optional(list(string), [])
  }))
}
