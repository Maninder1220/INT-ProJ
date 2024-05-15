# Here I am creating Internet Gateway

resource "aws_internet_gateway" "ig" {}


resource "aws_internet_gateway_attachment" "ig_attached" {
  vpc_id = aws_vpc.vpc.id
  internet_gateway_id = aws_internet_gateway.ig.id
  
}