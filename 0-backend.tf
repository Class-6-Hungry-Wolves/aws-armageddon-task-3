terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use latest version if possible
    }
  }
  backend "s3" {
    bucket  = "s3-for-reader-access-and-bedrock" # Name of the S3 bucket
    key     = "83025.tfstate"    # The name of the state file in the bucket
    region  = "us-east-1"         # Use a variable for the region
    encrypt = true                # Enable server-side encryption (optional but recommended)
  }
}
