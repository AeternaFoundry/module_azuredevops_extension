resource "azuredevops_extension" "extensions" {
  for_each = var.extensions

  extension_id = each.value.extension_id
  publisher_id = each.value.publisher_id
  disabled     = each.value.disabled
  version      = each.value.version

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

