provider "aws" {
  region = "us-east-1"
}

# Root finding (always reported)
resource "aws_s3_bucket" "root_public" {
  bucket = "my-root-bucket"
}

resource "aws_s3_bucket_acl" "root_public_acl" {
  bucket = aws_s3_bucket.root_public.id
  acl    = "public-read"
}

# REMOTE module — gated by enable_external_modules / --skip-external-modules
module "remote_s3" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"

  bucket = "remote-module-bucket"
  acl    = "public-read"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"
}

# LOCAL module — always scanned regardless of the flag
module "local_mod" {
  source = "./modules/local"
}
