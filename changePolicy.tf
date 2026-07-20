resource "aws_security_group" "test_pr" {
  name        = "test-pr-sg"
  description = "Test security group for PR scan"
  vpc_id      = "vpc-12345678"
 
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
 
resource "aws_s3_bucket" "test_pr" {
  bucket = "test-pr-bucket-67890"
}
 
resource "aws_s3_bucket_acl" "test_pr_acl" {
  bucket = aws_s3_bucket.test_pr.id
  acl    = "public-read"
}
