resource "aws_vpc" "test-vpc-2" {
  cidr_block = "192.168.200.0/24"

  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "test-vpc-2"
  }
}
