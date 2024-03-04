# resource "aws_s3_bucket" "bucket" {
#   bucket = "louis-website-hosting"
# }

# resource "aws_s3_bucket_website_configuration" "bucket_web_config" {
#   bucket = aws_s3_bucket.bucket.id

#   index_document {
#     suffix = "index.html"
#   }
# }

# resource "aws_s3_bucket_public_access_block" "public_access" {
#   bucket = aws_s3_bucket.bucket.id

#   block_public_acls       = false
#   block_public_policy     = false
#   ignore_public_acls      = false
#   restrict_public_buckets = false
# }

# resource "aws_s3_bucket_ownership_controls" "bucket_ownership" {
#   bucket = aws_s3_bucket.bucket.id

#   rule {
#     object_ownership = "BucketOwnerPreferred"
#   }
# }

# resource "aws_s3_bucket_acl" "public_acl" {
#   depends_on = [
#     aws_s3_bucket_website_configuration.bucket_web_config,
#     aws_s3_bucket_public_access_block.public_access,
#     aws_s3_bucket_ownership_controls.bucket_ownership
#   ]

#   bucket = aws_s3_bucket.bucket.id
#   acl    = "public-read"
# }

# output "endpoint" {
#   value = aws_s3_bucket_website_configuration.bucket_web_config.website_endpoint
# }