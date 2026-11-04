variable "rg_test7" {
  description = "Resource groups to create, keyed by a stable logical name."
  type = map(object({
    name     = string
    location = string
  }))
}
