resource "aws_route53_zone" "main" {
  name = "jsengun.com"
}

resource "aws_route53_zone" "dev" {
  name = "wordpress.jsengun.com"

}
  

resource "aws_route53_record" "wordpress" {
  zone_id = "Z02071922GQJ74VZ692DR"
  name    = "wordpress.jsengun.com"
  type    = "NS"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}