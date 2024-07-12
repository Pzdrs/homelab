locals {
  ttl = 86400
}

resource "dns_a_record_set" "ns1" {
  name = "ns1"
  zone = "pycrs.cz."
  addresses = [ "10.0.0.9" ]
  ttl = local.ttl
}

resource "dns_cname_record" "ns" {
  cname = "ns1.pycrs.cz."
  name  = "ns"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_a_record_set" "traefik" {
  addresses = ["10.0.0.25"]
  name      = "traefik"
  ttl       = 86400
  zone      = "pycrs.cz."
}

resource "dns_cname_record" "prowlarr" {
  cname = "traefik.pycrs.cz."
  name  = "prowlarr"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "jellyseer" {
  cname = "traefik.pycrs.cz."
  name  = "jellyseer"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "influx" {
  cname = "traefik.pycrs.cz."
  name  = "influx"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "speedtest" {
  cname = "traefik.pycrs.cz."
  name  = "speedtest"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "sonarr" {
  cname = "traefik.pycrs.cz."
  name  = "sonarr"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "qbittorrent" {
  cname = "traefik.pycrs.cz."
  name  = "qbittorrent"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "grafana" {
  cname = "traefik.pycrs.cz."
  name  = "grafana"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "jellyfin" {
  cname = "traefik.pycrs.cz."
  name  = "jellyfin"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "uptime_kuma" {
  cname = "traefik.pycrs.cz."
  name  = "uptime-kuma"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "node_red" {
  cname = "traefik.pycrs.cz."
  name  = "node-red"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "hub" {
  cname = "traefik.pycrs.cz."
  name  = "hub"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "radarr" {
  cname = "traefik.pycrs.cz."
  name  = "radarr"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "guacamole" {
  cname = "traefik.pycrs.cz."
  name  = "guacamole"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "portainer" {
  cname = "traefik.pycrs.cz."
  name  = "portainer"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}
resource "dns_cname_record" "pihole1" {
  cname = "traefik.pycrs.cz."
  name  = "pihole1"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "hass" {
  cname = "traefik.pycrs.cz."
  name  = "hass"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pihole" {
  cname = "traefik.pycrs.cz."
  name  = "pihole"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pihole2" {
  cname = "traefik.pycrs.cz."
  name  = "pihole2"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pve1" {
  cname = "traefik.pycrs.cz."
  name  = "pve1"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pbs1" {
  cname = "traefik.pycrs.cz."
  name  = "pbs1"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pfsense" {
  cname = "traefik.pycrs.cz."
  name  = "pfsense"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "unifi" {
  cname = "traefik.pycrs.cz."
  name  = "unifi"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "scale" {
  cname = "traefik.pycrs.cz."
  name  = "scale"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}
