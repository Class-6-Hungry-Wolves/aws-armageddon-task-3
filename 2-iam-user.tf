resource "aws_iam_user" "s3-bedrock-user" {
  for_each = toset(var.usernames)
  name = each.key
  path = "/s3-bedrock-admin/"

  tags = {
    tag-key = "s3-bedrock-admin"
  }
  force_destroy = true
}

