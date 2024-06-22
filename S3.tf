resource "aws_s3_bucket" "s3" {
  bucket = "aws-dlp-testbucket"
  force_destroy = true
}

resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  depends_on = [aws_s3_bucket_ownership_controls.ownership]
  bucket = aws_s3_bucket.s3.id
  acl    = "private"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.s3.bucket
  key    = "scan_credentials.txt"
  source = "./scan_credentials.txt"
  kms_key_id = aws_kms_key.S3_KMS.arn
  acl    = "private"
}
