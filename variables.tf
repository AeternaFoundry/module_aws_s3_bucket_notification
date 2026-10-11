variable "s3_bucket_notifications" {
  description = <<EOT
Map of s3_bucket_notifications, attributes below
Required:
    - bucket
Optional:
    - eventbridge
    - region
    - lambda_function (block):
        - events (required)
        - filter_prefix (optional)
        - filter_suffix (optional)
        - id (optional)
        - lambda_function_arn (optional)
    - queue (block):
        - events (required)
        - filter_prefix (optional)
        - filter_suffix (optional)
        - id (optional)
        - queue_arn (required)
    - topic (block):
        - events (required)
        - filter_prefix (optional)
        - filter_suffix (optional)
        - id (optional)
        - topic_arn (required)
EOT

  type = map(object({
    bucket      = string
    eventbridge = optional(bool)
    region      = optional(string)
    lambda_function = optional(list(object({
      events              = set(string)
      filter_prefix       = optional(string)
      filter_suffix       = optional(string)
      id                  = optional(string)
      lambda_function_arn = optional(string)
    })))
    queue = optional(list(object({
      events        = set(string)
      filter_prefix = optional(string)
      filter_suffix = optional(string)
      id            = optional(string)
      queue_arn     = string
    })))
    topic = optional(list(object({
      events        = set(string)
      filter_prefix = optional(string)
      filter_suffix = optional(string)
      id            = optional(string)
      topic_arn     = string
    })))
  }))
}

