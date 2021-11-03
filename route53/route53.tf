resource "aws_route53_record" "www" {
  zone_id = "Console >> Route53 >> Hosted Zone ID"
  name    = "www.${jsengun.com}"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}
