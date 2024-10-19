# main.tf

provider "aws" {
  region = "us-west-2"     # Replace with your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name  # Variable for the bucket name
  acl    = "private"        # The access control list (ACL), here it's private
}

# Variables file
variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
}

output "bucket_name" {
  value       = aws_s3_bucket.my_bucket.bucket
  description = "The name of the S3 bucket"
}
