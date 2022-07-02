resource "aws_security_group" "test-sg-2" {

  description = "Allow SSH port"
  vpc_id      = aws_vpc.test-vpc-2.id

  ingress {
    description = "Allow SSH port"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "test-sg-2"
  }
}
