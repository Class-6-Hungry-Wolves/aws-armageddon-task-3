output "password" {
  value = {for u in aws_iam_user_login_profile.s3_bedrock_login_password : u.user => u.password}
  sensitive = true
}