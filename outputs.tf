output "s3_bucket_notifications_id" {
  description = "Map of id values across all s3_bucket_notifications, keyed the same as var.s3_bucket_notifications"
  value       = { for k, v in aws_s3_bucket_notification.s3_bucket_notifications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_notifications_bucket" {
  description = "Map of bucket values across all s3_bucket_notifications, keyed the same as var.s3_bucket_notifications"
  value       = { for k, v in aws_s3_bucket_notification.s3_bucket_notifications : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_notifications_eventbridge" {
  description = "Map of eventbridge values across all s3_bucket_notifications, keyed the same as var.s3_bucket_notifications"
  value       = { for k, v in aws_s3_bucket_notification.s3_bucket_notifications : k => v.eventbridge if v.eventbridge != null }
}
output "s3_bucket_notifications_lambda_function" {
  description = "Map of lambda_function values across all s3_bucket_notifications, keyed the same as var.s3_bucket_notifications"
  value       = { for k, v in aws_s3_bucket_notification.s3_bucket_notifications : k => v.lambda_function if v.lambda_function != null && length(v.lambda_function) > 0 }
}
output "s3_bucket_notifications_queue" {
  description = "Map of queue values across all s3_bucket_notifications, keyed the same as var.s3_bucket_notifications"
  value       = { for k, v in aws_s3_bucket_notification.s3_bucket_notifications : k => v.queue if v.queue != null && length(v.queue) > 0 }
}
output "s3_bucket_notifications_region" {
  description = "Map of region values across all s3_bucket_notifications, keyed the same as var.s3_bucket_notifications"
  value       = { for k, v in aws_s3_bucket_notification.s3_bucket_notifications : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3_bucket_notifications_topic" {
  description = "Map of topic values across all s3_bucket_notifications, keyed the same as var.s3_bucket_notifications"
  value       = { for k, v in aws_s3_bucket_notification.s3_bucket_notifications : k => v.topic if v.topic != null && length(v.topic) > 0 }
}

