# Security Group
resource "aws_security_group" "sg" {
    name = "Security-Group"
    description = <<-EOF
    "This security group allow inbound 
     and outbound traffic for ssh, http and https
     on port 22 , 80 and 443 respectively "
    EOF
    vpc_id = aws_vpc.vpc.id
}


# Security Group Rules INGRESS
resource "aws_security_group_rule" "ssh" {
    type = "ingress"
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
    from_port = 22
    to_port = 22
    security_group_id = aws_security_group.sg.id
}

resource "aws_security_group_rule" "http" {
    type = "ingress"
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
    from_port = "80"
    to_port = "80"
    security_group_id = aws_security_group.sg.id
}

resource "aws_security_group_rule" "https" {
    type = "ingress"
    cidr_blocks = ["0.0.0.0/0"]
    protocol =  "tcp"
    from_port =  "443"
    to_port =  "443"
    security_group_id = aws_security_group.sg.id
}


# Security Group Rules EGRESS
resource "aws_security_group_rule" "ssh" {
    type = "egress"
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
    from_port = 22
    to_port = 22
    security_group_id = aws_security_group.sg.id
}

resource "aws_security_group_rule" "http" {
    type = "egress"
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
    from_port = "80"
    to_port = "80"
    security_group_id = aws_security_group.sg.id
}

resource "aws_security_group_rule" "https" {
    type = "egress"
    cidr_blocks = ["0.0.0.0/0"]
    protocol =  "tcp"
    from_port =  "443"
    to_port =  "443"
    security_group_id = aws_security_group.sg.id
}