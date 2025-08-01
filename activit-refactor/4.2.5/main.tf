resource "aws_macie2_classification_job" "access_key_scan" {
  name     = "scan-s3-for-access-keys"
  job_type = "ONE_TIME"

  s3_job_definition {
    bucket_definitions {
      account_id = data.aws_caller_identity.current.account_id
      buckets    = ["your-sensitive-bucket-name"]
    }

    scoping {
      includes {
        and {
          simple_scope_term {
            comparator = "EQ"
            key        = "OBJECT_EXTENSION"
            values     = ["txt", "log", "csv", "json"]
          }
        }
      }
    }
  }

  custom_data_identifier_ids = []  # Add if you define regex-based secrets

  sampling_percentage = 100
}
