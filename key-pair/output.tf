
output "region" {
    description = "region"
  value = aws.region 
}

output "key_id" {
    description = "key_id"
  value = aws_key_pair.ilearning-wordpress.id

}

output "key_name" {
    description = "key_name"
  value = aws_key_pair.ilearning-wordpress.key_name
}


