variable "universal_ssl_settings" {
  description = <<EOT
Map of universal_ssl_settings, attributes below
Required:
    - zone_id
Optional:
    - enabled
EOT

  type = map(object({
    zone_id = string
    enabled = optional(bool)
  }))
}

