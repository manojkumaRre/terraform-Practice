provider "aws" {
  region  = "ap-southeast-2"
  Access_key = var.access_key
  Secret_key = var.secret_key
}
resource "aws_s3_bucket" "b" {
  bucket = var.bucketname

  acl    = var.acl

  versioning {
    enabled = true
  }

  tags = var.tags
}