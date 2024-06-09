# Ingress ID
output "in_ssh_id" {
  value = aws_security_group_rule.in_ssh.id
}

output "in_http_id" {
  value = aws_security_group_rule.in_http.id
}

output "in_https_id" {
  value = aws_security_group_rule.in_https.id
}

# Egress
output "eg_ssh_id" {
  value = aws_security_group_rule.eg_ssh.id
}

output "eg_http_id" {
  value = aws_security_group_rule.eg_http.id
}

output "eg_https_id" {
  value = aws_security_group_rule.eg_https.id
}