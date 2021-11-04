output  “region” {
  value = “us-east-2"
}


output "key_pair_id" {
    description = "key_pair_id"
  value = aws_key_pair.ilearning-wordpress.key_pair_id

}

output "key_name" {
    description = "key_name"
  value = aws_key_pair.ilearning-wordpress.key_name
}


