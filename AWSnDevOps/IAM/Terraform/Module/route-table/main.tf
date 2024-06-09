# Public Route Table
resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.id
}

# Private Route Table
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.id  
}

# ROUTE
# Public
resource "aws_route" "public_route" {
    route_table_id = aws_route_table.public_rt
    destination_cidr_block = var.public_sn_cidr
    gateway_id = aws_internet_gateway.ig.id
}

# Private
resource "aws_route" "private_route" {
    route_table_id = aws_route_table.private_rt
    destination_cidr_block = var.private_sn_cidr
    nat_gateway_id = aws_nat_gateway.nat.id
}

# ASSOCIATION
resource "aws_route_table_association" "public_ass" {
    subnet_id = aws_subnet.public_sn.id
    route_table_id = aws_route.public_route.id
}

resource "aws_route_table_association" "private_ass" {
    subnet_id = aws_subnet.private_sn.id
    route_table_id = aws_route.private_route.id
}
