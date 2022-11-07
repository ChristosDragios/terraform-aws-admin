
resource "aws_organizations_organizational_unit" "admin-ou" {
  name      = var.org_unit_name
  parent_id = aws_organizations_organization.root-org.roots[0].id

}

## Only one root org can exist##
resource "aws_organizations_organization" "root-org" {
  feature_set          = var.root-org.feature_set
  enabled_policy_types = var.root-org.enabled_policy_types

}
data "aws_organizations_organization" "root-org" {

}
