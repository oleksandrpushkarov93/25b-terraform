resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = "${var.name}-instance"
    env  = var.env
  }
}