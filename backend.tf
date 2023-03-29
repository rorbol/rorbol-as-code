terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "rorbol"
    workspaces {
      name = "rorbol-as-code"
    }
  }
}
