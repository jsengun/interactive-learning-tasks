# Shows AMI ID
output "CENTOS_ID" {
  value = data.aws_ami.centos.id
}
output "Host_Address" {
  value = aws_instance.r1soft.public_ip
}

output "ARN" {
  value = aws_iam_user.example.arn
}


output "User" {
    value = var.user
}

output "Password" {
    value = var.pass
}