# Creating IAM User under DEV
resource "aws_iam_user" "dev_1" {
  name = var.dev_1_name
}

resource "aws_iam_access_key" "dev_1_name" {
  user = aws_iam_user.dev_1
}

resource "aws_iam_user_login_profile" "dev_1_credentials" {
  user = aws_iam_user.dev_1
  password_reset_required = true
}