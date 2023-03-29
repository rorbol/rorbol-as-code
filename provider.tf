provider "aws" {
  alias               = "use1"
  region              = "us-east-1"
  access_key          = var.aws_access_key_id
  secret_key          = var.aws_secret_access_key
  allowed_account_ids = ["297561857154"]
}

provider "aws" {
  alias               = "euc1"
  region              = "eu-central-1"
  access_key          = var.aws_access_key_id
  secret_key          = var.aws_secret_access_key
  allowed_account_ids = ["297561857154"]
}
