# lifecycle.tf

resource "aws_s3_bucket" "bucket" {
  bucket = "example-bucket"

  lifecycle_rule {
    enabled = true

    noncurrent_version_expiration {
      days = 30
    }

    transition {
      days          = 90
      storage_class = "ONEZONE_IA"
    }

    transition {
      days          = 180
      storage_class = "GLACIER"
    }

    expiration {
      days = 365
    }
  }
}