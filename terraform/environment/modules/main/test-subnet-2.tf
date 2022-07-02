resource "aws_subnet" "test-subnet-2" {
  vpc_id     = aws_vpc.test-vpc-2.id
  cidr_block = "192.168.200.0/24"

  tags = {
    Name = "test-subnet-2"
  }
}
