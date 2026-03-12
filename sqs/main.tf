resource "aws_sqs_queue" "framedrop_queue" {
  name                      = "framedrop-${var.service_name}-queue"
  fifo_queue                = false
  message_retention_seconds = var.queue_message_retention_seconds
}

resource "aws_sqs_queue" "framedrop_dlq" {
  name                      = "framedrop-${var.service_name}-dlq"
  message_retention_seconds = var.dlq_message_retention_seconds

  redrive_allow_policy = jsonencode({
    redrivePermission = "byQueue",
    sourceQueueArns   = [aws_sqs_queue.framedrop_queue.arn]
  })
}

resource "aws_sqs_queue_redrive_policy" "framedrop_queue_redrive_policy" {
  queue_url = aws_sqs_queue.framedrop_queue.id

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.framedrop_dlq.arn
    maxReceiveCount     = 4
  })
}