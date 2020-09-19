provider "aws" {
  version = "~> 2.0"
  region  = "ap-southeast-2"
  AccessKey = var.AccessKey
  SecretKey = var.SecretKey
}
resource "aws_s3_bucket" "b" {
  bucket = "test1234"

  acl    = "private"

  versioning {
    enabled = true
  }

  tags = var.tags
}