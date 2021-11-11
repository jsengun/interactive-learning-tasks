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

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.101.0/24"
  map_public_ip_on_launch  = true
  availability_zone = data.aws_availability_zones.all.names[0]
  tags = {
    Name = "public1"
    Team = "DevOps"
    Environment = "Dev"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.102.0/24"
  map_public_ip_on_launch  = true
  availability_zone = data.aws_availability_zones.all.names[1]

  tags = {
    Name = "public2"
    Team = "DevOps"
    Environment = "Dev"
  }
}

resource "aws_subnet" "public3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.103.0/24"
  map_public_ip_on_launch  = true
  availability_zone = data.aws_availability_zones.all.names[2]

  tags = {
    Name = "public3"
    Team = "DevOps"
    Environment = "Dev"
  }
}