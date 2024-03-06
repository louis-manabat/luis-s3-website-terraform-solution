resource "aws_s3_bucket_website_configuration" "bucket_web_config" {
  bucket = var.bucket_id

  index_document {
    suffix = var.suffix
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = var.bucket_id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_ownership_controls" "bucket_ownership" {
  bucket = var.bucket_id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "public_acl" {
  depends_on = [
    aws_s3_bucket_website_configuration.bucket_web_config,
    aws_s3_bucket_public_access_block.public_access,
    aws_s3_bucket_ownership_controls.bucket_ownership
  ]

  bucket = var.bucket_id
  acl    = "public-read"
}