# Creating NACL - Network Access Control List
resource "aws_network_acl" "nacl" {
    vpc_id = aws_vpc.vpc.id
    
}


# NACL Ingress Rules
resource "aws_network_acl_rule" "ssh" {
  egress = false
  rule_number = "100"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 22
  to_port = 22
  network_acl_id = aws_network_acl.nacl.id
}

resource "aws_network_acl_rule" "http" {
  egress = false
  rule_number = "110"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 80
  to_port = 80
  network_acl_id = aws_network_acl.nacl.id
}

resource "aws_network_acl_rule" "https" {
  egress = false
  rule_number = "120"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 443
  to_port = 443
  network_acl_id = aws_network_acl.nacl.id
}