resource "aws_route53_record" "www" {
  zone_id = "Z02071922GQJ74VZ692DR"
  name    = "jsengun.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}
