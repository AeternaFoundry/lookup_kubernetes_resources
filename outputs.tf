output "resources_lookup_api_version" {
  description = "Map of api_version values across all resources_lookup, keyed the same as var.resources_lookup except keys with no api_version are omitted"
  value       = { for k, v in data.kubernetes_resources.resources_lookup : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "resources_lookup_field_selector" {
  description = "Map of field_selector values across all resources_lookup, keyed the same as var.resources_lookup except keys with no field_selector are omitted"
  value       = { for k, v in data.kubernetes_resources.resources_lookup : k => v.field_selector if v.field_selector != null && length(v.field_selector) > 0 }
}
output "resources_lookup_kind" {
  description = "Map of kind values across all resources_lookup, keyed the same as var.resources_lookup except keys with no kind are omitted"
  value       = { for k, v in data.kubernetes_resources.resources_lookup : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "resources_lookup_label_selector" {
  description = "Map of label_selector values across all resources_lookup, keyed the same as var.resources_lookup except keys with no label_selector are omitted"
  value       = { for k, v in data.kubernetes_resources.resources_lookup : k => v.label_selector if v.label_selector != null && length(v.label_selector) > 0 }
}
output "resources_lookup_limit" {
  description = "Map of limit values across all resources_lookup, keyed the same as var.resources_lookup except keys with no limit are omitted"
  value       = { for k, v in data.kubernetes_resources.resources_lookup : k => v.limit if v.limit != null }
}
output "resources_lookup_namespace" {
  description = "Map of namespace values across all resources_lookup, keyed the same as var.resources_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.kubernetes_resources.resources_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "resources_lookup_objects" {
  description = "Map of objects values across all resources_lookup, keyed the same as var.resources_lookup except keys with no objects are omitted"
  value       = { for k, v in data.kubernetes_resources.resources_lookup : k => v.objects if v.objects != null }
}

