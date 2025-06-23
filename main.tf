provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-from-terraform-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Name = "Example"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}