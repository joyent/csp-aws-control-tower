
resource "aws_s3_bucket" "log_archive" {
  bucket = var.bucket_name

  versioning {
    enabled = true
  }

  object_lock_configuration {
    object_lock_enabled = "Enabled"
  }
}
