# Creating Organization
resource "aws_organizations_organization" "master" {
    feature_set = "ALL"   
}

# Creating Organization Unit
resource "aws_organizations_organizational_unit" "dev-unit" {
  name = "Dev_Unit"
  parent_id = aws_organizations_organization.master.id
  
}

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

# Attaching policy to respective Orginization
resource "aws_organizations_policy_attachment" "master_full_access" {
  policy_id = aws_organizations_policy.master_policy.id
  target_id = aws_organizations_organization.master.id
}