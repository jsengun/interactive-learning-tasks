resource "aws_iam_group_membership" "team" {
  name = "sysusers"
  users = [
    aws_iam_user.user_one.name,
    
  ]
  group = aws_iam_group.group.name
  
}
resource "aws_iam_group" "group" {
  name = "sysusers"
}
resource "aws_iam_user" "user_one" {
  name = "bob"
 tags = {
    Name = "Team"
    Environment = "DevOps"
  }
}
