
resource "aws_cloudtrail" "org" {
  name                          = var.trail_name
  s3_bucket_name                = var.s3_bucket_name
  is_multi_region_trail        = true
  is_organization_trail        = var.is_organization_trail
  include_global_service_events = true
  kms_key_id                   = var.kms_key_arn
}
