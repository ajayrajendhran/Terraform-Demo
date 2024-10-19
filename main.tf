# main.tf

provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name  # Reference to the variable for bucket name
  acl    = "private"
}

# Declare the bucket_name variable
variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
}

# Declare the tag variable
variable "tag" {
  description = "Tag for the release"
  type        = string
}
