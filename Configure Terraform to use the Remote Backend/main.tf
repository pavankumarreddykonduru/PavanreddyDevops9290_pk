terraform {
  backend "s3" {
    # Replace this with your actual bucket name
    bucket         = "my-unique-terraform-state-bucket-name"
    
    # The path and filename within the bucket where the state will reside
    key            = "global/s3/terraform.tfstate" 
    
    # The AWS region where the bucket exists
    region         = "us-east-1"
    
    # Replace this with your actual DynamoDB table name
    dynamodb_table = "terraform-state-locks"
    
    # Encrypt the state file at rest in S3
    encrypt        = true
  }
}