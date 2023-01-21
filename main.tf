terraform {
  backend "s3" {
    bucket   = "personal-site-terraform-state-james"
    key      = "terraform.tfstate"
    region   = "us-east-1"
  }
}

module "vpc" {
  source = "./modules/vpc"
}