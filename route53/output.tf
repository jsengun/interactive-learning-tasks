resource "aws_route53_zone" "main" {
 name = "jsengun.com"
}

# resource "aws_route53_record" "dev" {
#   name = "blog.jsengun.com"

# }

resource "aws_route53_record" "dev-ns" {
  zone_id = "Z02071922GQJ74VZ692DR"
  name    = "blog.jsengun.com"
  type    = "NS"
  records = ["127.0.0.1"]
}