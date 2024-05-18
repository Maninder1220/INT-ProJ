# S3 ID
output "s3_id" {
    value = aws_s3_bucket.s3.id
}


# S3 Endpoint ID
output "s3_endpoint_id" {
    value = aws_vpc_endpoint.s3_end_point.id
}