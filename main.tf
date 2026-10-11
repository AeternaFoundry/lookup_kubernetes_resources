data "kubernetes_resources" "resources_lookup" {
  for_each = var.resources_lookup

  api_version    = each.value.api_version
  kind           = each.value.kind
  field_selector = each.value.field_selector
  label_selector = each.value.label_selector
  limit          = each.value.limit
  namespace      = each.value.namespace
  objects        = each.value.objects
}

