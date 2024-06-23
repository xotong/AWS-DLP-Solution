# Create Amazon Eventbridge Rule for Amazon Macie findings
resource "aws_cloudwatch_event_rule" "macie" {
  name        = "aws-dlp-testbucket-aws-macie-rule"
  description = "Capture macie"

  event_pattern = jsonencode({
    source = ["aws.macie"]
    detail-type = [
      "Macie Finding"
    ]
  })
}

resource "aws_cloudwatch_event_target" "config-macie" {
  rule      = aws_cloudwatch_event_rule.macie.name
  target_id = "SendToSNS"
  arn       = aws_sns_topic.sns.arn
}