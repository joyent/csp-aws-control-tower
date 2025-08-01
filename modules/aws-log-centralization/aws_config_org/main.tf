
resource "aws_config_configuration_recorder" "org" {
  name     = "org-recorder"
  role_arn = "arn:aws:iam::${var.aggregator_account_id}:role/AWSConfigRole"

  recording_group {
    all_supported = true
    include_global_resource_types = true
  }
}

resource "aws_config_delivery_channel" "org" {
  name           = "org-delivery"
  s3_bucket_name = var.s3_bucket_name
  s3_key_prefix  = "config"
  sns_topic_arn  = null
}
