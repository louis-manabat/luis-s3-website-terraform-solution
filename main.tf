/*
Create the S3 bucket
*/
resource "aws_s3_bucket" "bucket" {

}

/*
Once the S3 bucket has been created, configure that S3 bucket (via referencing)
to route to the index document for the website (the html file name)
*/
resource "aws_s3_bucket_website_configuration" "bucket_web_config" {

}

/*
Configure the S3 bucket settings (via referecing) to disable all ACL block public access
*/
resource "aws_s3_bucket_public_access_block" "public_access" {

}

/*
Configure the S3 bucket Object Ownership rule to `BucketOwnerPreferred`
*/
resource "aws_s3_bucket_ownership_controls" "bucket_ownership" {

}

/*
Configure the S3 bucket acl to `public-read` you will also need to make sure this block
runs after `aws_s3_bucket_ownership_controls` and `aws_s3_bucket_public_access_block`

Hint: the `depends_on` argument will help here
*/
resource "aws_s3_bucket_acl" "public_acl" {

}

/*
Create an output where it prints the `website_endpoint` attribute from the `aws_s3_bucket_website_configuration` block
*/
output "endpoint" {
  
}