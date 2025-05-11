module "s3" {
  source         = "../modules"
  bucket_name    = "my-example-bucket"
  acl            = "public-read"
  force_destroy  = true
  versioning     = true
  logging_bucket = "my-logs-bucket"
  logging_prefix = "logs/"
  tags = {
    Environment = "dev"
    Owner       = "user"
  }
}


module "s3_2" {
  source         = "../modules"
  bucket_name    = "my-example-bucket2"
  acl            = "public-read"
  force_destroy  = true
  versioning     = true
  logging_bucket = "my-logs-bucket2"
  logging_prefix = "logs/"
  tags = {
    Environment = "dev"
    Owner       = "user"
  }
}


