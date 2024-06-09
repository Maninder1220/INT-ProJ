# NACL ID
output "nacl" {
    value = aws_network_acl.nacl.it
}


# Ingress Rule ID
output "nacl_in_ssh_id" {
    value = aws_network_acl_rule.in_ssh.id
}

output "nacl_in_http_id" {
    value = aws_network_acl_rule.in_http.id
}

output "nacl_in_https_id" {
    value = aws_network_acl_rule.in_https.id
}

# Egress Rule ID
output "nacl_eg_ssh_id" {
    value = aws_network_acl_rule.eg_ssh.id
}

output "nacl_eg_http_id" {
    value = aws_network_acl_rule.eg_http.id
}

output "nacl_eg_https_id" {
    value = aws_network_acl_rule.eg_https.id
}