provider "aws" {
  region  = "ap-southeast-2"
}
resource "aws_s3_bucket" "b" {
  bucket = var.bucketname

  acl    = var.acl

  versioning {
    enabled = true
  }

  tags = var.tags
}