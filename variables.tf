variable "extensions" {
  description = <<EOT
Map of extensions, attributes below
Required:
    - extension_id
    - publisher_id
Optional:
    - disabled
    - version
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    extension_id = string
    publisher_id = string
    disabled     = optional(bool)
    version      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.extensions : (
        length(trimspace(v.extension_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.extensions : (
        length(trimspace(v.publisher_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

