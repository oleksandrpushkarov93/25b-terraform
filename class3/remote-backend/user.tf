resource "aws_iam_user" "test" {
  name = "marat-test-user"
  path = "/"
}

resource "aws_iam_user" "test2" {
  name = "marat-test-user2"
  path = "/"
}
