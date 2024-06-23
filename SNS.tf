resource "aws_sns_topic" "sns" {
  name = "aws-dlp-testbucket-sns-topic"
}

module "notify_slack" {
  source  = "terraform-aws-modules/notify-slack/aws"
  version = "~> 5.0"

  sns_topic_name   = aws_sns_topic.sns.name
  create_sns_topic = false

  slack_webhook_url = "${var.slack_webhook_url}"
  slack_channel     = "aws-macie-notifications"
  slack_username    = "butler"
}