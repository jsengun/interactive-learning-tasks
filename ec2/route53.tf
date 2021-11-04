resource "aws_route53_zone" "main" {
  name = "jsengun.com"
}

resource "aws_route53_zone" "dev" {
  name = "wordpress.jsengun.com"

}
  

resource "aws_route53_record" "dev-ns" {
  zone_id = "Z02071922GQJ74VZ692DR"
  name    = "wordpress.jsengun.com"
  type    = "NS"
  ttl     = "300"
  records = ["127.0.0.1"]
}