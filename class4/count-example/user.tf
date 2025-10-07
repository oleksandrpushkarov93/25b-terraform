resource "aws_iam_user" "default" {
  count = length(var.users) # 3
  name = var.users[count.index]

  tags = {
    Name = var.users[count.index]
  }
}
