output "extensions_id" {
  description = "Map of id values across all extensions, keyed the same as var.extensions"
  value       = { for k, v in azuredevops_extension.extensions : k => v.id }
}
output "extensions_disabled" {
  description = "Map of disabled values across all extensions, keyed the same as var.extensions"
  value       = { for k, v in azuredevops_extension.extensions : k => v.disabled }
}
output "extensions_extension_id" {
  description = "Map of extension_id values across all extensions, keyed the same as var.extensions"
  value       = { for k, v in azuredevops_extension.extensions : k => v.extension_id }
}
output "extensions_extension_name" {
  description = "Map of extension_name values across all extensions, keyed the same as var.extensions"
  value       = { for k, v in azuredevops_extension.extensions : k => v.extension_name }
}
output "extensions_publisher_id" {
  description = "Map of publisher_id values across all extensions, keyed the same as var.extensions"
  value       = { for k, v in azuredevops_extension.extensions : k => v.publisher_id }
}
output "extensions_publisher_name" {
  description = "Map of publisher_name values across all extensions, keyed the same as var.extensions"
  value       = { for k, v in azuredevops_extension.extensions : k => v.publisher_name }
}
output "extensions_scope" {
  description = "Map of scope values across all extensions, keyed the same as var.extensions"
  value       = { for k, v in azuredevops_extension.extensions : k => v.scope }
}
output "extensions_version" {
  description = "Map of version values across all extensions, keyed the same as var.extensions"
  value       = { for k, v in azuredevops_extension.extensions : k => v.version }
}

