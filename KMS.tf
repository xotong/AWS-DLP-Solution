
resource "aws_kms_key" "S3_KMS" {
  description             = "S3_KMS"
  deletion_window_in_days = 7
}