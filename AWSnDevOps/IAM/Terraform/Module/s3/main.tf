# s3 Bucket
resource "aws_s3_bucket" "s3" {
    bucket = var.bucket_name
    
}


# Creating Endpoint for s3 | Change Zone if needed
resource "aws_vpc_endpoint" "s3_end_point" {
    service_name = "com.amazonaws.us-west-2.s3"
    vpc_id = aws_vpc.vpc.id
}


