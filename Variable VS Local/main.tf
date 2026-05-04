provider "aws" {
  region = "us-east-1" # Update this to your AMI's actual region
}

# ------------------------------------------------------
# 1. THE VARIABLE (The Outside Dial)
# ------------------------------------------------------
variable "environment" {
  description = "The environment we are deploying to"
  type        = string
  default     = "dev" 
}

# ------------------------------------------------------
# 2. THE LOCAL (The Internal Gear)
# ------------------------------------------------------
locals {
  # We compute a strict naming convention here.
  # We also lock in your requested AMI and instance type so no one can change them.
  server_name   = "sre-frontend-${var.environment}"
  target_ami    = "ami-0220d79f3f480ecf5"
  instance_size = "t3.micro"
}

# ------------------------------------------------------
# 3. THE RESOURCE
# ------------------------------------------------------
resource "aws_instance" "test_server" {
  # Notice how the resource pulls from our locked-down locals
  ami           = local.target_ami
  instance_type = local.instance_size

  tags = {
    Name        = local.server_name
    Environment = var.environment
  }
}