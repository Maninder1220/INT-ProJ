resource "aws_iam_policy" "name" {
  name =  
  path = 
  description =  
  policy = 
}



# Defining Policy in Data Block
data "aws_iam_policy_document" "s3_master" {
  statement {
    effect = "Allow"
    actions = ["*"]
    resources = ["*"]
  }
}