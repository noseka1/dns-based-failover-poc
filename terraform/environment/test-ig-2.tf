resource "aws_internet_gateway" "test-ig-2" {
  vpc_id = aws_vpc.test-vpc-2.id

  tags = {
    Name = "test-ig-2"
  }
}
