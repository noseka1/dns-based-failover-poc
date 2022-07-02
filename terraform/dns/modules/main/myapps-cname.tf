data "aws_route53_zone" "test-zone-2" {
  name         = "myzonedomain-2.example.com."
  private_zone = true
}

resource "aws_route53_record" "myapps-cname" {
  zone_id = data.aws_route53_zone.test-zone-2.zone_id
  name    = "*.myzonedomain-2.example.com"
  type    = "CNAME"
  ttl     = "300"
  records = ["router-default.apps.myclusterdomain.example.com"]
}
