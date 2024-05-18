# Internet Gateway ID
output "ig_id" {
    value = aws_internet_gateway.ig.id
}

# Internet Gateway Attachment ID
output "ig_attachment_id" {
    value = aws_internet_gateway_attachment.ig_attached.id
}