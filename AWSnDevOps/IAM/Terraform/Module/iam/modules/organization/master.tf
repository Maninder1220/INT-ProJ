# Creating Organization
resource "aws_organizations_organization" "master" {
    feature_set = "ALL"   
}


# Attaching policy to respective Orginization
resource "aws_organizations_policy_attachment" "master_full_access" {
  policy_id = aws_organizations_policy.master_policy.id
  target_id = aws_organizations_organization.master.id
}