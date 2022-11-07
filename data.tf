data "aws_iam_policy" "AdministratorAccess" {
  name = "AdministratorAccess"
}

data "aws_iam_policy_document" "scp_policy_frankfurt" {
  statement {
    sid         = "DenyAllOutsideEU"
    effect      = "Deny"
    not_actions = ["*"]
    resources   = ["*"]
    condition {
      test     = "StringNotEquals"
      variable = "aws:RequestedRegion"
      values   = [var.region]
    }
  }
}

data "aws_iam_group" "admins" {
  group_name = var.iam_group_name
}