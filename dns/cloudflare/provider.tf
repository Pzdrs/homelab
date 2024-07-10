terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "4.36.0"
    }
  }
}

variable "cf_api_token" {
    type = string
}

provider "cloudflare" {
    api_token = var.cf_api_token
}
