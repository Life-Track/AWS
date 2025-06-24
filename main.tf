provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "this-is-connors-test"
  force_destroy = true

  tags = {
    Name = "Example"
  }
}