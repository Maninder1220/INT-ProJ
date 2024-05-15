provider "aws" {
  region  = "us-east-1"
  profile = "terra-project"

}

# vpc

module "vpc" {
  source   = "../Module/vpc"
  vpc_cidr = var.vpc_cidr

  private_sn_cidr = var.private_sn_cidr
  public_sn_cidr = var.public_sn_cidr
}