# Elastic IP ID
output "eip_id" {
  value = aws_eip.nat_eip.id
}

# NAT Gateway ID
output "nat_id" {
    value = aws_nat_gateway.nat.id
}