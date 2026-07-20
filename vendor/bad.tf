resource "aws_s3_bucket" "vendor_public" {
  bucket = "vendor-bucket"
}

resource "aws_s3_bucket_acl" "vendor_public_acl" {
  bucket = aws_s3_bucket.vendor_public.id
  acl    = "public-read"
}
