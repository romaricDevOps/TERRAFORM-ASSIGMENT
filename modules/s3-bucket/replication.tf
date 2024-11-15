# replication.tf

resource "aws_s3_bucket" "source_bucket" {
  bucket = "source-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
    expiration {
      days = 365
    }
  }
}

resource "aws_s3_bucket" "replica_bucket" {
  bucket = "replica-bucket"
  acl    = "private"
}

resource "aws_s3_bucket_replication" "bucket_replication" {
  source_bucket = aws_s3_bucket.source_bucket.bucket
  destination_bucket = aws_s3_bucket.replica_bucket.bucket

  rule {
    id     = "entire-bucket"
    priority = 1

    status = "Enabled"

    destination {
      bucket = aws_s3_bucket.replica_bucket.bucket
      storage_class = "STANDARD"
    }

    source_selection_criteria {
      sse_kms_encrypted_objects {
        status = "Enabled"
      }
    }

    existing_object_replication {
      status = "Enabled"
    }
  }
}