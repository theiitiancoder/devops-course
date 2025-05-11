variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply to the bucket."
  type        = string
  default     = "private"
}

variable "force_destroy" {
  description = "Whether to force destroy the bucket (deleting all objects)."
  type        = bool
  default     = false
}

variable "versioning" {
  description = "Enable versioning on the S3 bucket."
  type        = bool
  default     = false
}

variable "logging_bucket" {
  description = "The target bucket for logging."
  type        = string
  default     = null
}

variable "logging_prefix" {
  description = "The prefix for log object keys."
  type        = string
  default     = null
}

variable "policy" {
  description = "The bucket policy in JSON format."
  type        = string
  default     = "{}"
}

variable "tags" {
  description = "A map of tags to assign to the bucket."
  type        = map(string)
  default     = {
    foo = "bar"
  }
}
