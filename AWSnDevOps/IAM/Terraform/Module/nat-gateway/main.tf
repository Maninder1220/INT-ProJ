# Elastic IP
resource "aws_eip" "nat_eip" {
    instance = aws_nat_gateway.nat.id
    
}

# NAT Gateway
resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.nat_eip.id
    subnet_id     = aws_subnet.private_sn.id

    depends_on = [aws_internet_gateway.ig]
  
}