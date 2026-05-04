provider "aws" {
  region = "us-east-1" # Change to your preferred region
}

# 1. Create the S3 Bucket for State Storage
resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-unique-terraform-state-bucket-name862365" # MUST BE GLOBALLY UNIQUE

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}

# 2. Enable Versioning on the S3 Bucket (Highly Recommended)
# This allows you to recover older states if something goes wrong.
resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# 3. Enable Server-Side Encryption
# State files often contain sensitive data (passwords, keys).
resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# 4. Create the DynamoDB Table for State Locking
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID" # Terraform requires the partition key to be named exactly "LockID"

  attribute {
    name = "LockID"
    type = "S"    # S stands for String
  }
}