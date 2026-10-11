variable "resources_lookup" {
  description = <<EOT
Map of resources_lookup, attributes below
Required:
    - api_version
    - kind
Optional:
    - field_selector
    - label_selector
    - limit
    - namespace
    - objects
EOT

  type = map(object({
    api_version    = string
    kind           = string
    field_selector = optional(string)
    label_selector = optional(string)
    limit          = optional(number)
    namespace      = optional(string)
    objects        = optional(any)
  }))
}

