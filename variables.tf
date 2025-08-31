variable "region" {
  type = string
  description = "The region(s) you would like to create resources in"
  default = "us-east-1"
}

variable "usernames" {
  type = set(string)
  description = "The IAM usernames for the S3 Bedrock Admins"
  default = [ "nick", "jourdan", "vito" ]
}


variable "policy_arn" {
  description = "A list of ARN's to be used by the S3 Bedrock Admin user group."
  type        = list(string)
  default = [
    "arn:aws:iam::aws:policy/AmazonBedrockFullAccess",
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
    "arn:aws:iam::aws:policy/IAMUserChangePassword"
  ]
}