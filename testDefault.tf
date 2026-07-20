# edge_case.tf - Simple resource for edge case testing
resource "aws_s3_bucket" "edge_test" {
  bucket = "edge-test-bucket-99999"
}

resource "aws_s3_bucket_versioning" "edge_test_versioning" {
  bucket = aws_s3_bucket.edge_test.id
  versioning_configuration {
    status = "Enabled"
  }
}
