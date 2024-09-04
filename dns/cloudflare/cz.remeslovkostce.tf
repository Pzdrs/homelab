variable "cz_remeslovkostce_zone_id" {
    type = string
}

locals {
  mx1 = "mx10.active24.cz"
  mx2 = "mx20.active24.cz"
  dkim_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDW6fYb2EdwHUMv94tFLrYlQF+XTt5N1KGmguewROebRvPHgrQTQZm3IzWwVyazo3e51hIkcCwVeH3txuS/Q/qu4elEEjFSUlQ3mCpZr0/we9Mzm3zkBIyjXT+K6JdGe7wMf0dJfENibrpN5+bWBm+LbZlc0iqcXDSmIfi8oHfrzwIDAQAB"
}

# Website

resource "cloudflare_record" "website_api" {
  name    = "api"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "remeslovkostce.cz"
  zone_id = var.cz_remeslovkostce_zone_id
}

resource "cloudflare_record" "website_3w" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "remeslovkostce.cz"
  zone_id = var.cz_remeslovkostce_zone_id
}

# Email related records

resource "cloudflare_record" "mx1" {
  name     = "remeslovkostce.cz"
  priority = 10
  proxied  = false
  ttl      = 600
  type     = "MX"
  value    = local.mx1
  zone_id = var.cz_remeslovkostce_zone_id
}

resource "cloudflare_record" "mx2" {
  name     = "remeslovkostce.cz"
  priority = 20
  proxied  = false
  ttl      = 600
  type     = "MX"
  value    = local.mx2
  zone_id = var.cz_remeslovkostce_zone_id
}

resource "cloudflare_record" "dkim" {
  name    = "a24._domainkey"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DKIM1; t=s; k=rsa; p=${local.dkim_key}"
  zone_id = var.cz_remeslovkostce_zone_id
}

resource "cloudflare_record" "spf1" {
  name    = "remeslovkostce.cz"
  proxied = false
  ttl     = 3600
  type    = "TXT"
  value   = "v=spf1 a mx include:_spf.websupport.cz ?all"
  zone_id = var.cz_remeslovkostce_zone_id
}

resource "cloudflare_record" "spf2" {
  name    = "remeslovkostce.cz"
  proxied = false
  ttl     = 3600
  type    = "TXT"
  value   = "spf2.0/pra a mx include:_sid.websupport.cz ?all"
  zone_id = var.cz_remeslovkostce_zone_id
}

resource "cloudflare_record" "dmarc" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=none;"
  zone_id = var.cz_remeslovkostce_zone_id
}