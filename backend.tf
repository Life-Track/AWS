terraform {
  backend "s3" {
    bucket         = "my-terraform-state-life-track"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf_locks"
    encrypt        = true
  }
}