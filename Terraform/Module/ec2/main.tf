# EC2 in Public Subnet with ami
# Creating 5ami
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "ec2" {
    ami = data.aws_ami.ubuntu
    instance_type = "t2.micro"
    tenancy = "host"
    subnet_id = aws_subnet.public_sn
    associate_public_ip_address = true
}