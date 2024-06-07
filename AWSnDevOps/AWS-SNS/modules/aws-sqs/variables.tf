
# SQS redrive policies
variable "redrive_policy" {}
# {\"deadLetterTargetArn\":\"${aws_sqs_queue.sqs_dow_dlq.arn}\",\"maxReceiveCount\":5}"
# add to var.tf 