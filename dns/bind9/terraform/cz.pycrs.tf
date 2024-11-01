locals {
  ttl     = 86400
  traefik = "traefik.pycrs.cz."
  kube-traefik = "kube-traefik.pycrs.cz."
}

resource "dns_a_record_set" "ns1" {
  name      = "ns1"
  zone      = "pycrs.cz."
  addresses = ["10.0.0.9"]
  ttl       = local.ttl
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
  ttl       = local.ttl
  zone      = "pycrs.cz."
}

resource "dns_a_record_set" "kube-traefik" {
  addresses = ["10.0.0.214"]
  name      = "kube-traefik"
  ttl       = local.ttl
  zone      = "pycrs.cz."
}

resource "dns_cname_record" "gitlab" {
  cname = local.traefik
  name  = "gitlab"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "hikeit_api" {
  cname = local.kube-traefik
  name  = "hikeit-api"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "prowlarr" {
  cname = local.kube-traefik
  name  = "prowlarr"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "jellyseer" {
  cname = local.kube-traefik
  name  = "jellyseer"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "influx" {
  cname = local.traefik
  name  = "influx"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "speedtest" {
  cname = local.traefik
  name  = "speedtest"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "sonarr" {
  cname = local.kube-traefik
  name  = "sonarr"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "qbittorrent" {
  cname = local.kube-traefik
  name  = "qbittorrent"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "grafana" {
  cname = local.kube-traefik 
  name  = "grafana"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "jellyfin" {
  cname = local.kube-traefik
  name  = "jellyfin"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "uptime_kuma" {
  cname = local.traefik
  name  = "uptime-kuma"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "node_red" {
  cname = local.traefik
  name  = "node-red"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "hub" {
  cname = local.kube-traefik
  name  = "hub"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "radarr" {
  cname = local.kube-traefik
  name  = "radarr"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "guacamole" {
  cname = local.traefik
  name  = "guacamole"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "portainer" {
  cname = local.traefik
  name  = "portainer"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}
resource "dns_cname_record" "pihole1" {
  cname = local.kube-traefik
  name  = "pihole1"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "hass" {
  cname = local.kube-traefik
  name  = "hass"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pihole" {
  cname = local.kube-traefik
  name  = "pihole"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pihole2" {
  cname = local.kube-traefik
  name  = "pihole2"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pve1" {
  cname = local.kube-traefik
  name  = "pve1"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pbs1" {
  cname = local.kube-traefik
  name  = "pbs1"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "pfsense" {
  cname = local.kube-traefik
  name  = "pfsense"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "unifi" {
  cname = local.kube-traefik
  name  = "unifi"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "scale" {
  cname = local.kube-traefik
  name  = "scale"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "immich" {
  cname = local.kube-traefik
  name  = "immich"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}

resource "dns_cname_record" "mailrise" {
  cname = local.kube-traefik
  name  = "mailrise"
  ttl   = local.ttl
  zone  = "pycrs.cz."
}