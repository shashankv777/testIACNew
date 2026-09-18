resource "aws_security_group" "iac_framework_canary" {
  name        = "iac-framework-canary"
  description = "Intentionally vulnerable security group for IaC scanner testing"

  ingress {
    description = "Intentionally exposed SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Intentionally exposed HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
