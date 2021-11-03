data "aws_outposts_outpost_instance_types" "example" {
  arn = data.aws_outposts_outpost.example.arn
}
