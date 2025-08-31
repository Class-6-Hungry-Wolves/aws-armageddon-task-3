resource "aws_iam_group" "s3_bedrock_access" {
  name = "S3_Bedrock_Access"
  path = "/users/"
}


resource "aws_iam_group_membership" "s3_bedrock_access_group_membership" {
  name     = "s3_bedrock_access_group_membership"
  users    = [for u in aws_iam_user.s3-bedrock-user : u.name]

  group = aws_iam_group.s3_bedrock_access.name
}

resource "aws_iam_group_policy_attachment" "s3_bedrock_group_policies" {
  for_each = toset(var.policy_arn)

  group      = aws_iam_group.s3_bedrock_access.name
  policy_arn = each.value
}


resource "aws_iam_user_login_profile" "s3_bedrock_login_password" {
  for_each = toset(var.usernames)
  user = aws_iam_user.s3-bedrock-user[each.key].name
  password_length = 20
  password_reset_required = true
}
