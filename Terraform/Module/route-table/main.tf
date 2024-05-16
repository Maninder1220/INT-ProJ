
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
    route = data.aws_route_table.public_rt
    
}

# Private Route Table
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.id
    route = data.aws_route_table.private_rt
}


# ROUTE

# Public
resource "aws_route" "public_route" {
    route_table_id = aws_route_table.public_rt
  
}


# Private
resource "aws_route" "private_route" {
    route_table_id = aws_route_table.private_rt
}



