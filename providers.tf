provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::854241045080:user/terraform_admin"
  }
}