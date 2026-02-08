variable "service_name" {
  description = "Name of the service that owns the queue."
  type        = string
}

variable "queue_message_retention_seconds" {
  default = 432000 // 5 dias.
  description = "How many seconds messages are retained in the main queue before expiring."
  type = number
}

variable "dlq_message_retention_seconds" {
  default = 432000 // 5 dias.
  description = "How many seconds messages are retained in the DLQ before expiring."
  type = number
}