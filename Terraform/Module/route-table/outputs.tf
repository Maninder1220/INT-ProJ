# Public Route ID
output "public_route_id" {
  value = aws_route.public_route.id
}

# Private Route ID
output "private_route_id" {
  value = aws_route.private_route.id
}