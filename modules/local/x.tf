resource "aws_s3_bucket" "local_public" {
  bucket = "local-module-bucket"
}

resource "aws_s3_bucket_acl" "local_public_acl" {
  bucket = aws_s3_bucket.local_public.id
  acl    = "public-read"
}
