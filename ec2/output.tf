output "PIP" {
  value = aws_instance.web.public_ip
}

output "AMI" {
  value = aws_instance.web.ami
}

output "AZ" {
  value = aws_instance.web.availability_zone
}

output "Region" {
  value = "us-east-1"
}