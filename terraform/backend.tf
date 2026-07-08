# Terraform State Backend Configuration
#
# IMPORTANT: This backend configuration is commented out by default.
# Follow these steps to enable it:
#
# 1. First, run `terraform init` without the backend uncommented to create local state
# 2. This will provision your AWS resources (S3 bucket, CloudFront, etc.)
# 3. Once resources are created, uncomment the backend block below
# 4. Run `terraform init -migrate-state` to move the local state to S3
#
# This two-step process ensures your state bucket exists before Terraform tries to use it.

# terraform {
#   backend "s3" {
#     bucket         = "terraform-state-portfolio"
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"
#   }
# }

# Before uncommenting the backend block above, ensure you have:
# 1. Created an S3 bucket for state (terraform-state-portfolio)
# 2. Enabled versioning on the bucket
# 3. Enabled server-side encryption (AES-256 or KMS)
# 4. Created a DynamoDB table for state locking (terraform-locks) with partition key "LockID"
