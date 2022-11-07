resource "aws_organizations_policy" "region-frankfurt" {
  name        = local.scp_region_frankfurt.name
  description = "Only allow provisioning in eu-central-1 Region"
  type        = local.scp_region_frankfurt.type

  content = data.aws_iam_policy_document.scp_policy_frankfurt.json

}

resource "aws_organizations_policy_attachment" "root" {
  policy_id = aws_organizations_policy.region-frankfurt.id
  target_id = aws_organizations_organization.root-org.roots[0].id
  depends_on = [
    aws_organizations_policy.region-frankfurt,
    aws_organizations_organization.root-org
  ]
}