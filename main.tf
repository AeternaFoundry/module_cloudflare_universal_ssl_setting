resource "cloudflare_universal_ssl_setting" "universal_ssl_settings" {
  for_each = var.universal_ssl_settings

  zone_id = each.value.zone_id
  enabled = each.value.enabled
}

