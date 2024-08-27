resource "dns_a_record_set" "root" {
  addresses = ["10.0.0.25"]
  name      = null
  ttl       = local.ttl
  zone      = "remeslovkostce.cz."
}

resource "dns_cname_record" "api" {
  cname = "remeslovkostce.cz."
  name  = "api"
  ttl   = local.ttl
  zone  = "remeslovkostce.cz."
}

resource "dns_cname_record" "www" {
  cname = "remeslovkostce.cz."
  name  = "www"
  ttl   = local.ttl
  zone  = "remeslovkostce.cz."
}