resource "aws_instance" "test-instance-2" {
  ami                    = "ami-0cff7528ff583bf9a"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.test-subnet-2.id
  vpc_security_group_ids = [ aws_security_group.test-sg-2.id ]

  tags = {
    Name = "test-instance-2"
  }
}
