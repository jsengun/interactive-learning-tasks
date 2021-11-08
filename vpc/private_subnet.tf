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

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-1a"
  tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-1b"
  tags = {
    Name = "private2"
  }
}

resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-1c"
  tags = {
    Name = "private3"
  }
}





resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.gw.id
  }

  tags = {
    Name = "Three-Tier-Private"
  }
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private3" {
  subnet_id      = aws_subnet.private3.id
  route_table_id = aws_route_table.private.id
}
