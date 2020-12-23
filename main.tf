provider "aws" {
  region     = "us-west-2"
  access_key = "none"
  secret_key = "none"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-12322332"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}