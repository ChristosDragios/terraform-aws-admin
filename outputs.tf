output "scp_region_frankfurt_json" {
  value = data.aws_iam_policy_document.scp_policy_frankfurt.json
}

output "iam_policy_admin_policy" {
  value = data.aws_iam_policy.AdministratorAccess.policy
}

output "iam_group_admins_users" {
  value = data.aws_iam_group.admins.users
}
