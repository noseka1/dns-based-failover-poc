resource "aws_route_table" "test-rt-2" {
  vpc_id = aws_vpc.test-vpc-2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test-ig-2.id
  }

  tags = {
    Name = "test-rt-2"
  }
}

resource "aws_route_table_association" "test-rt-2-subnet" {
  route_table_id = aws_route_table.test-rt-2.id
  subnet_id      = aws_subnet.test-subnet-2.id
}
