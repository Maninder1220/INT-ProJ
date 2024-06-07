# This SNS will make customers aware of a new deal once a week
resource "aws_sns_topic" "deal_of_the_week" {
  name = "Your Weeakly Deal"
}

# Primary SQS
resource "aws_sqs_queue" "sqs_dow" {
  name = " SQS for DOW"
  sqs_managed_sse_enabled = true  # Msg is Encrypted
  redrive_policy = var.redrive_policy  # dlq mention here
}

# Dead Letter Queue SQS
resource "aws_sqs_queue" "sqs_dow_dlq" {
  name = "SQS for DLQ"
}


# SNS Subscription
resource "aws_sns_topic_subscription" "dow_sqs_target" {
  topic_arn = aws_sns_topic.deal_of_the_week.arn
  protocol = "sqs"
  endpoint = aws_sqs_queue.sqs_dow.arn
  
}

# SQS Policies | We can give JSON Path for Policy
resource "aws_sqs_queue_policy" "dow_sqs_policies" {
  queue_url = aws_sqs_queue.sqs_dow.id
  policy = <<POLICY
  {

  }
}