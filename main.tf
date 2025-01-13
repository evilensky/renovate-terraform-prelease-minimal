module "cloudflare" {
  source  = "cloudflare/cloudflare"
  version = "4.0.0"

  zone_id = cloudflare_zone.domain.id

  settings = {
    # SSL/TLS Settings
    ssl = "strict"

    # Security Settings
    security_level        = "medium"
    challenge_ttl        = 1800
    browser_check       = "on"

    # Performance Settings
    minify = {
      css  = "on"
      html = "on"
      js   = "on"
    }

    # Cache Settings
    browser_cache_ttl = 14400
    always_online    = "on"
  }
}
