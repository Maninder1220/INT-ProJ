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


# SQS Policies | We can give JSON Path for Policy
resource "aws_sqs_queue_policy" "dow_sqs_policies" {
  queue_url = aws_sqs_queue.sqs_dow.id
  policy = <<POLICY
  {

  }
}