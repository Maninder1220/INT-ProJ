# Providers Variables
variable "provider_region" {}
variable "provider_version" {}

# Backend Variables
variable "backend_bucket_name" {}
variable "backend_region" {}
variable "backend_profile" {}

# SQS redrive policies
variable "redrive_policy" {}
# {\"deadLetterTargetArn\":\"${aws_sqs_queue.sqs_dow_dlq.arn}\",\"maxReceiveCount\":5}"
# add to var.tf 