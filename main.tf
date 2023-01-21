terraform {
  backend "s3" {
    bucket   = "personal-site-terraform-state-james"
    key      = "terraform.tfstate"
    region   = "us-east-1"
    role_arn = "arn:aws:iam::854241045080:user/terraform_admin"
  }
}

module "vpc" {
  source = "../modules/vpc"
}