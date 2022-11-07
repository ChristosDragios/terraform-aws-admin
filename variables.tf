variable "region" {
  description = "Set in which AWS region the scp will be placed"
  type        = string
}

variable "iam_user_name" {
  description = "The custom admin user to be used instead of root"
  type        = string
}

variable "iam_group_name" {
  description = "The admin group for the 'iam_user_name'"
  type        = string
  default     = "admins"
}

variable "iam_policy_name" {
  description = "The attached policy in the admin group"
  type        = string
  default     = "admin_policy"
}

variable "org_unit_name" {
  description = "The admin Organizational Unit under Root"
  type        = string
  default     = "admin-ou"
}

variable "root-org" {
  description = "Enabled policies for the root Org in AWS"
  default = {
    feature_set          = "ALL"
    enabled_policy_types = ["SERVICE_CONTROL_POLICY", "TAG_POLICY"]
  }
}
