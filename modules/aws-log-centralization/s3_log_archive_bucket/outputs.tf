
output "name" {
  value = aws_s3_bucket.log_archive.id
}

output "arn" {
  value = aws_s3_bucket.log_archive.arn
}
