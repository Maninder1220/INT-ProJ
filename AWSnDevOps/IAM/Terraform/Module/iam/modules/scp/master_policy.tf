# Creating Policy Resource
resource "aws_organizations_policy" "master_policy" {
  name = "MASTER_POLICY"
  description = "Policy to grant full access to all AWS Services and Action"
  type = "SERVICE-CONTROL-POLICY"
  content = data.aws_iam_policy_document.master_policy
}

# Defining Policy in Data Block
data "aws_iam_policy_document" "master_policy" {
  statement {
    effect = "Allow"
    actions = ["*"]
    resources = ["*"]
  }
}