provider "aws" {
  version = "~> 2.0"
  region  = "ap-southeast-2"
  access_key = var.AccessKey
  secret_key = var.SecretKey
}
resource "aws_s3_bucket" "b" {
  bucket = "test1234"

  acl    = "private"

  versioning {
    enabled = true
  }
  
}
