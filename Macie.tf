resource "aws_macie2_account" "DailyScan" {
  finding_publishing_frequency = "SIX_HOURS"
  status                       = "ENABLED"
}

resource "aws_macie2_classification_job" "DailyScanning" {
  job_type = "SCHEDULED"
  name     = "DailyScan Of S3 Buckets"

  schedule_frequency {
    daily_schedule  = true
  }

  s3_job_definition {
    bucket_definitions {
      account_id = "${var.AccountID}"
      buckets    = ["aws-dlp-testbucket"]
    }
  }
  depends_on = [aws_macie2_account.DailyScan]
}