data "aws_availability_zones" "azs" {
  state = "available"
}
###s3 bucket creation######

resource "aws_s3_bucket" "aws_bucket" {
  bucket = var.bucket_name
  tags = local.common_tags
}

resource "aws_s3_bucket_acl" "s3bucket-acl" {
  bucket = aws_s3_bucket.aws_bucket.id
  acl    = "private"
}

#####encryption#######

resource "aws_s3_bucket_server_side_encryption_configuration" "server_side_encryption" {
  bucket = aws_s3_bucket.aws_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}