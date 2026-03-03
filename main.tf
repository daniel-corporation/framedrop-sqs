module "upload_sqs" {
  source = "./sqs"

  service_name                    = "upload"
  queue_message_retention_seconds = 432000
  dlq_message_retention_seconds   = 432000
}

module "processing_sqs" {
  source = "./sqs"

  service_name                    = "processing"
  queue_message_retention_seconds = 432000
  dlq_message_retention_seconds   = 432000
}