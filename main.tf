terraform {
  backend "s3" {
    bucket = "personal-site-terraform-state-james"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

locals {
  eks_cluster_name = "test"
}

module "vpc" {
  source       = "./modules/vpc"
  cluster_name = local.eks_cluster_name
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = local.eks_cluster_name

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}

module "iot" {
  source = "./modules/iot"
}