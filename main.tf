module "s3_bucket" {
  source = "./modules/s3_bucket"

  bucket_name = "louis-s3-bucket"
}

module "s3_bucket_config" {
  source = "./modules/s3_bucket_public_access_module"

  bucket_id = module.s3_bucket.s3_bucket_id
  suffix = "index.html"
}