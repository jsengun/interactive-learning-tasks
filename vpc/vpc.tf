resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "aws_vpc"  
    Team = "DevOps"
    Environment = "Dev"
  }
}

# resource "aws_subnet" "public1" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.101.0/24"
#   tags = {
#     Name = "public1"
#     Team = "DevOps"
#     Environment = "Dev"
#   }
# }

# resource "aws_subnet" "public2" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.102.0/24"
#   tags = {
#     Name = "public2"
#     Team = "DevOps"
#     Environment = "Dev"
#   }
# }

# resource "aws_subnet" "public3" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.103.0/24"
#   tags = {
#     Name = "public3"
#     Team = "DevOps"
#     Environment = "Dev"
#   }
# }


# resource "aws_subnet" "private1" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.1.0/24"
#   tags = {
#     Name = "private1"
#     Team = "DevOps"
#     Environment = "Dev"
#   }
# }

# resource "aws_subnet" "private2" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.2.0/24"
#   tags = {
#     Name = "private2"
#     Team = "DevOps"
#     Environment = "Dev"
#   }
# }

# resource "aws_subnet" "private3" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.3.0/24"
#   tags = {
#     Name = "private3"
#     Team = "DevOps"
#     Environment = "Dev"
#   }
# }
