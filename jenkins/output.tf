output "Jenkins_URL" {
  value = aws_route53_record.jenkins.name
}

output "Jenkins_User" {
  value = "Jennifer"
}

output "Jenkins_Passwd" {
  value = "redhat"
}