terraform {
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "3.4.1"
    }
  }
}

variable "tsig_key" {
  type = string
}

provider "dns" {
  update {
    server        = "10.0.0.9"
    key_name      = "tsig-key."
    key_algorithm = "hmac-sha512"
    key_secret    = var.tsig_key
  }
}
