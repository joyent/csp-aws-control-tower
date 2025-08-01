###This doesn’t enforce who has the key — but helps flag stale or misused keys.

resource "aws_config_config_rule" "access_keys_rotated" {
  name = "access-keys-rotated"
  source {
    owner             = "AWS"
    source_identifier = "ACCESS_KEYS_ROTATED"
  }
}
