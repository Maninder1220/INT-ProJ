
# VPC
module "vpc" {
  source   = "../Module/vpc"
  vpc_cidr = var.vpc_cidr

  private_sn_cidr = var.private_sn_cidr
  public_sn_cidr = var.public_sn_cidr
  
}

# INTERNET GATEWAY
module "ig" {
    source = "../Module/Internet-gateway"
}



# ROUTE TABLE
module "rt" {
    source = "../Module/route-table"
}



# NAT GATEWAY
module "nat-gateway" {
  source = "../Module/nat-gateway"
  
}

# SECURITY GROUP
module "sg" {
    source = "../Module/security-group"
}


# NACL
module "nacl" {
    source = "../Module/nacl"
}



# KEY PAIR
module "kp" {
    source = "../Module/key-pair"
}


# EC2
module "ec2" {
    source = "../Module/ec2"
}


# S3
module "s3" {
    source = "../Module/s3"
}

