provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0866a1c8686eaeebd" # Update with a valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformExample"
  }
}