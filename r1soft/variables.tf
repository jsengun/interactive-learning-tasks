variable "user" {
  type        = string
  description = "Please provide a region for instances"
  default     = "admin"
}

variable "pass" {
  type        = string
  description = "Please provide a region for instances"
  default     = "redhat"
}









# variable "region" {
#   type        = string
#   description = "Please provide a region for instances"
#   default     = "us-east-1"
# }
# variable "key_name" {
#   type        = string
#   description = "Please provide a key pair name for instances"
#   default     = "class2-key"
# }
# variable "aws_security_group" {
#   type        = string
#   description = "Please provide a sec group name for instances"
#   default     = "allow_tls"
# }
# variable "instance_type" {
#   type        = string
#   description = "Please provide an instance type"
#   default     = "t3.micro"
# }