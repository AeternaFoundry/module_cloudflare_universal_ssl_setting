output "universal_ssl_settings_id" {
  description = "Map of id values across all universal_ssl_settings, keyed the same as var.universal_ssl_settings except keys with no id are omitted"
  value       = { for k, v in cloudflare_universal_ssl_setting.universal_ssl_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "universal_ssl_settings_enabled" {
  description = "Map of enabled values across all universal_ssl_settings, keyed the same as var.universal_ssl_settings except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_universal_ssl_setting.universal_ssl_settings : k => v.enabled if v.enabled != null }
}
output "universal_ssl_settings_zone_id" {
  description = "Map of zone_id values across all universal_ssl_settings, keyed the same as var.universal_ssl_settings except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_universal_ssl_setting.universal_ssl_settings : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

