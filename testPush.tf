resource "aws_s3_bucket" "test_push" {
  bucket = "test-push-bucket-12345"
}
 
resource "aws_s3_bucket_acl" "test_push_acl" {
  bucket = aws_s3_bucket.test_push.id
  acl    = "public-read"
}
