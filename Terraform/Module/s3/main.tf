# s3 Bucket in Private Subnet
resource "aws_s3_bucket" "s3" {
    bucket = "my_private_bucket"
}


# Creating Endpoint for s3 | Change Zone if needed
resource "aws_vpc_endpoint" "s3_end_point" {
    service_name = "com.amazonaws.us-west-2.s3"
    vpc_id = aws_vpc.vpc.id
}