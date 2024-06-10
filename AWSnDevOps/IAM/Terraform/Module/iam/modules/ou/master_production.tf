# Creating Organization Unit Production
resource "aws_organizations_organizational_unit" "master_production_unit" {
  name = "Master_Prod_Unit"
  parent_id = aws_organizations_organization.master.id  
}


resource "aws_organizations_account" "prod_1" {
  name = var.prod_1_name
  email = var.prod_1_email
  parent_id = aws_organizations_organizational_unit.master_dev_unit.id
  
}