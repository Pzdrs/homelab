variable "cz_pycrs_zone_id" {
    type = string
}

resource "cloudflare_record" "jellyfin" {
  name    = "jellyfin"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "home.pycrs.cz"
  zone_id = var.cz_pycrs_zone_id
}

resource "cloudflare_record" "mc_smp" {
  name    = "smp"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "home.pycrs.cz"
  zone_id = var.cz_pycrs_zone_id
}

resource "cloudflare_record" "mc_smp_dynmap" {
  name    = "dynmap"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "home.pycrs.cz"
  zone_id = var.cz_pycrs_zone_id
}
