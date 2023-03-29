module "dns" {
  source = "github.com/pippiio/aws-dns?ref=v2.0.0"

  name_prefix = "rorbol-"
  domains     = var.zones
  email = {
    default_postmaster = "postmaster@rorbol.com"
  }
}
