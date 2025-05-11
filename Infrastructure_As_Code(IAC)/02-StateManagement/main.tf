terraform {
    backend "s3" {
        bucket         = "tfstate-dusracollege"
        key            = "terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "tf-state-lock"
    }
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "tfstate-dusracollege"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "dev"
  }
}

output "bucket_arn" {
  value = aws_s3_bucket.tf_state
}


resource "aws_s3_bucket" "dusracollege2" {
  bucket = "dusracollege2"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "dev"
    foo = "dusracollege2"
  }
}

resource "aws_s3_bucket" "dusracollege3" {
  bucket = "dusracollege3"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "dev"
    foo = "dusracollege3"
  }
}

resource "aws_s3_bucket" "dusracollege4" {
  bucket = "dusracollege4"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "dev"
    foo = "dusracollege4"
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "tf_state" {
  bucket = aws_s3_bucket.tf_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_dynamodb_table" "tf_state_lock" {
  name           = "tf-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Terraform State Lock Table"
    Environment = "dev"
  }
}



