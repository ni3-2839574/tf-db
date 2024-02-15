terraform {
  backend "s3" {
    bucket         = "company-ppr-tfstates"
    key            = "2144-swap-ppr/swap-module.tfstate"
    region         = "eu-west-1"
    role_arn       = "arn:aws:iam::xxxxxxxxxxxxxx:role/Atlantis"
    encrypt        = true
    dynamodb_table = "company-production-terraform-state-lock"
  }
}
