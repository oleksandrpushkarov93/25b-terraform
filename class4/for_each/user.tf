resource "aws_iam_user" "default" {
  for_each = toset(var.users)
  name = each.value

  tags = {
    Name = each.value
  }
}
