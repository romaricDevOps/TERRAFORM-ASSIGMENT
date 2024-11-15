# s3-bucket.tf

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Specify a unique bucket name

  acl    = "private"  # Access Control List for the bucket
  region = "us-east-1"  # AWS region for the bucket

  versioning {
    enabled = true  # Enable versioning for the bucket
  }

  logging {
    target_bucket = "logging-bucket"  # Bucket to store access logs
    target_prefix = "my-bucket-logs/"  # Prefix for access logs
  }

  tags = {
    Environment = "Production"
    Department  = "IT"
  }
}