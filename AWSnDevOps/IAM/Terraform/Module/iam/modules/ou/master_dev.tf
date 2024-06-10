# Creating Organization Unit DEV
resource "aws_organizations_organizational_unit" "master_dev_unit" {
  name = "Master_Dev_Unit"
  parent_id = aws_organizations_organization.master.id  
}

resource "aws_organizations_account" "dev_1" {
  name = var.dev_1_name
  email = var.dev_1_email
  parent_id = aws_organizations_organizational_unit.master_dev_unit.id
  
}
