resource "aws_iam_user" "christos-tf" {
  name = var.iam_user_name


}

resource "aws_iam_group" "admins" {
  name = var.iam_group_name


}

resource "aws_iam_user_group_membership" "admins" {
  user   = aws_iam_user.christos-tf.name
  groups = [aws_iam_group.admins.name]


}

resource "aws_iam_policy" "admin-policy" {
  name        = var.iam_policy_name
  description = "Policy for the 'admins' group"
  policy      = data.aws_iam_policy.AdministratorAccess.policy

}

resource "aws_iam_group_policy_attachment" "AdministratorAccess" {
  group      = aws_iam_group.admins.name
  policy_arn = data.aws_iam_policy.AdministratorAccess.arn

}

resource "aws_iam_user_login_profile" "admin-profile" {
  user                    = aws_iam_user.christos-tf.name
  password_length         = "8"
  password_reset_required = true

}


