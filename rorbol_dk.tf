module "website" {
  source = "github.com/pippiio/aws-static-website?ref=v3.1.0"

  providers = {
    aws      = aws.euc1
    aws.use1 = aws.use1
  }

  name_prefix = "rorboldk-"
  config = {
    domain_name     = "www.rorbol.dk"
    domain_alias    = []
    error_document  = "404.html"
    log_retention   = 35
    expiration_days = 30
    disallow_robots = false
    # language_redirect = {
    #   "da" = "/da/"
    #   "en" = "/en/"
    #   "*"  = "/en/"
    # }
    firewall = {
      block_by_default = false
      # allowed_ip_cidrs = [for ip in var.techchapter_ip_addresses : "${ip}/32"]
      blocked_countries = [
        "CN", // China
        "IN", // India
        "RU", // Russian Federation 
        "PK", // Pakistan
      ],
    }
  }
}
