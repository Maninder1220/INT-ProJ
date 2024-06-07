# This SNS will make customers aware of a new deal once a week
resource "aws_sns_topic" "deal_of_the_week" {
  name = "Your Weeakly Deal"
}

# SNS Subscription
resource "aws_sns_topic_subscription" "dow_sqs_target" {
  topic_arn = aws_sns_topic.deal_of_the_week.arn
  protocol = "sqs"
  endpoint = aws_sqs_queue.sqs_dow.arn
  
}