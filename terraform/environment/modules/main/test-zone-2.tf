resource "aws_route53_zone" "test-zone-2" {
  name         = "myzonedomain-2.example.com."

  vpc {
    vpc_id = aws_vpc.test-vpc-2.id
  }
}
