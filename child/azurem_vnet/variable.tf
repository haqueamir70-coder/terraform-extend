variable "vnet77" {
  description = "Virtual networks to create, keyed by a stable logical name."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = optional(list(string), [])
  }))
}
