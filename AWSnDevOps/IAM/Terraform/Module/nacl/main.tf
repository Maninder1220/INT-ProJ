# Creating NACL - Network Access Control List
resource "aws_network_acl" "nacl" {
    vpc_id = aws_vpc.vpc.id
    
    
}


# NACL Ingress Rules
resource "aws_network_acl_rule" "in_ssh" {
  egress = false
  rule_number = "100"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 22
  to_port = 22
  network_acl_id = aws_network_acl.nacl.id
}

resource "aws_network_acl_rule" "in_http" {
  egress = false
  rule_number = "110"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 80
  to_port = 80
  network_acl_id = aws_network_acl.nacl.id
}

resource "aws_network_acl_rule" "in_https" {
  egress = false
  rule_number = "120"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 443
  to_port = 443
  network_acl_id = aws_network_acl.nacl.id
}

# NACL Egress Rules
resource "aws_network_acl_rule" "eg_ssh" {
  egress = true
  rule_number = "100"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 22
  to_port = 22
  network_acl_id = aws_network_acl.nacl.id
}

resource "aws_network_acl_rule" "eg_http" {
  egress = true
  rule_number = "110"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 80
  to_port = 80
  network_acl_id = aws_network_acl.nacl.id
}

resource "aws_network_acl_rule" "eg_https" {
  egress = true
  rule_number = "120"
  protocol = "tcp"
  rule_action = "allow"
  cidr_block = aws_vpc.vpc.vpc_cidr
  from_port = 443
  to_port = 443
  network_acl_id = aws_network_acl.nacl.id
}