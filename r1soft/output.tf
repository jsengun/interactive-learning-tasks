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

# output "ARN" {
#   value = aws_instance.web.arn
# }

# output "password" {
#   value = aws_iam_user_login_profile.example.encrypted_password
# }

output "User" {
    value = var.user
}

output "Password" {
    value = var.pass
}