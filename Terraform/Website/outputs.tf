# VPC
output "vpc_id" {
    value = aws_vpc.vpc.id
}

output "private_subnet_id" {
  value = aws_subnet.private_sn.id
}

output "public_subnet_id" {
    value = aws_subnet.public_sn.id
}

# INTERNET GATEWAY
# Internet Gateway ID
output "ig_id" {
    value = aws_internet_gateway.ig.id
}

# Internet Gateway Attachment ID
output "ig_attachment_id" {
    value = aws_internet_gateway_attachment.ig_attached.id
}


# SECURITY GROUP
# Ingress ID
output "in_ssh_id" {
  value = aws_security_group_rule.in_ssh.id
}

output "in_http_id" {
  value = aws_security_group_rule.in_http.id
}

output "in_https_id" {
  value = aws_security_group_rule.in_https.id
}

# Egress
output "eg_ssh_id" {
  value = aws_security_group_rule.eg_ssh.id
}

output "eg_http_id" {
  value = aws_security_group_rule.eg_http.id
}

output "eg_https_id" {
  value = aws_security_group_rule.eg_https.id
}


# SIMPLE STORAGE SOLUTION S3
# S3 ID
output "s3_id" {
    value = aws_s3_bucket.s3.id
}


# S3 Endpoint ID
output "s3_endpoint_id" {
    value = aws_vpc_endpoint.s3_end_point.id
}

# ROUTE TABLE
# Public Route ID
output "public_route_id" {
  value = aws_route.public_route.id
}

# Private Route ID
output "private_route_id" {
  value = aws_route.private_route.id
}

# NAT GATEWAY
# Elastic IP ID
output "eip_id" {
  value = aws_eip.nat_eip.id
}

# NAT Gateway ID
output "nat_id" {
    value = aws_nat_gateway.nat.id
}

# NACL
# NACL ID
output "nacl" {
    value = aws_network_acl.nacl.it
}

# NACL ID
output "nacl" {
    value = aws_network_acl.nacl.it
}


# Ingress Rule ID
output "nacl_in_ssh_id" {
    value = aws_network_acl_rule.in_ssh.id
}

output "nacl_in_http_id" {
    value = aws_network_acl_rule.in_http.id
}

output "nacl_in_https_id" {
    value = aws_network_acl_rule.in_https.id
}

# Egress Rule ID
output "nacl_eg_ssh_id" {
    value = aws_network_acl_rule.eg_ssh.id
}

output "nacl_eg_http_id" {
    value = aws_network_acl_rule.eg_http.id
}

output "nacl_eg_https_id" {
    value = aws_network_acl_rule.eg_https.id
}


# KEY-PAIR
output "private_key" {
  value = tls_private_key.ecdsa-pk.private_key_pem
}

# EC2
# EC2 ID
output "ec2_id" {
    value = aws_instance.ec2.id
}

