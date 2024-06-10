# Creating IAM User under DEV
resource "aws_iam_user" "prod_1" {
  name = var.prod_1_name
}

resource "aws_iam_access_key" "prod_1_name" {
  user = aws_iam_user.prod_1
}

resource "aws_iam_user_login_profile" "prod_1_credentials" {
  user = aws_iam_user.prod_1
  password_reset_required = true
}