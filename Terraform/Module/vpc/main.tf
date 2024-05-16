
# This is Availibility Zone
data "aws_availability_zone" "az" {}


# This is VPC
resource "aws_vpc" "vpc" {

        cidr_block       = var.vpc_cidr
        instance_tenancy = "default"
        enable_dns_hostnames = true


  tags = {
    Name = "VPC"
  }
}

# This is Subnet

# PRIVATE
resource "aws_subnet" "private_sn" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.private_sn_cidr
  availability_zone = data.aws_availability_zone.az
  map_public_ip_on_launch = false 
  
}

# PUBLIC
resource "aws_subnet" "public_sn" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.public_sn_cidr
  availability_zone = data.aws_availability_zone.az
  map_public_ip_on_launch = true
  
}
