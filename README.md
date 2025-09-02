# AWS Armageddon Task 3

IAM User Management with S3 Read Access and Bedrock Admin Access

## Overview

This repository contains Infrastructure as Code (IaC) solutions for creating and managing AWS IAM users with specific permissions for Amazon S3 read access and Amazon Bedrock administrator access. 

## 🚀 Prerequisites

### Required Tools
- **AWS CLI** 
  ```bash
  aws --version
  ```
- **Terraform** 
  ```bash
  terraform version
  ```

## Deployment

#### Step 1: Initialize Terraform
```bash
cd terraform
terraform init
```

#### Step 2: Configure Variables
Create a `.tfvars` file:

#### Step 3: Plan and Apply
```bash
terraform plan
terraform apply
```

## 🧹 Cleanup

### Terraform Cleanup
```bash
cd terraform
terraform destroy
```

