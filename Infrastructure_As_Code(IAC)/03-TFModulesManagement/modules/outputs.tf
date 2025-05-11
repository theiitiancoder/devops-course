output "bucket_name" {
  description = "The name of the S3 bucket."
  value       = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket."
  value       = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  description = "The domain name of the S3 bucket."
  value       = aws_s3_bucket.this.bucket_domain_name
}

output "bucket_json" {
  description = "The JSON of the S3 bucket."
  value       = aws_s3_bucket.this
}