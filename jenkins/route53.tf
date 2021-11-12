resource "aws_route53_record" "jenkins" {
  zone_id = "Z02071922GQJ74VZ692DR"
  name    = "jenkins.jsengun.com"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}