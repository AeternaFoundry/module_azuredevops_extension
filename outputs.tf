output "extensions_id" {
  description = "Map of id values across all extensions, keyed the same as var.extensions except keys with no id are omitted"
  value       = { for k, v in azuredevops_extension.extensions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "extensions_disabled" {
  description = "Map of disabled values across all extensions, keyed the same as var.extensions except keys with no disabled are omitted"
  value       = { for k, v in azuredevops_extension.extensions : k => v.disabled if v.disabled != null }
}
output "extensions_extension_id" {
  description = "Map of extension_id values across all extensions, keyed the same as var.extensions except keys with no extension_id are omitted"
  value       = { for k, v in azuredevops_extension.extensions : k => v.extension_id if v.extension_id != null && length(v.extension_id) > 0 }
}
output "extensions_extension_name" {
  description = "Map of extension_name values across all extensions, keyed the same as var.extensions except keys with no extension_name are omitted"
  value       = { for k, v in azuredevops_extension.extensions : k => v.extension_name if v.extension_name != null && length(v.extension_name) > 0 }
}
output "extensions_publisher_id" {
  description = "Map of publisher_id values across all extensions, keyed the same as var.extensions except keys with no publisher_id are omitted"
  value       = { for k, v in azuredevops_extension.extensions : k => v.publisher_id if v.publisher_id != null && length(v.publisher_id) > 0 }
}
output "extensions_publisher_name" {
  description = "Map of publisher_name values across all extensions, keyed the same as var.extensions except keys with no publisher_name are omitted"
  value       = { for k, v in azuredevops_extension.extensions : k => v.publisher_name if v.publisher_name != null && length(v.publisher_name) > 0 }
}
output "extensions_scope" {
  description = "Map of scope values across all extensions, keyed the same as var.extensions except keys with no scope are omitted"
  value       = { for k, v in azuredevops_extension.extensions : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "extensions_version" {
  description = "Map of version values across all extensions, keyed the same as var.extensions except keys with no version are omitted"
  value       = { for k, v in azuredevops_extension.extensions : k => v.version if v.version != null && length(v.version) > 0 }
}

