
# Public Route Table
data "aws_route_table" "public_rt" {
    subnet_id = aws_subnet.public_sn.id
}


# Private Route Table
data "aws_route_table" "private_rt" {
    subnet_id = aws_subnet.private_sn.id
}



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
    destination_cidr_block = "10.0.2.0/24"
    gateway_id = aws_internet_gateway.ig.id
  
}


# Private
resource "aws_route" "private_route" {
    route_table_id = aws_route_table.private_rt
    destination_cidr_block = "10.0.1.0/24"
    nat_gateway_id = aws_nat_gateway.nat.id
}


