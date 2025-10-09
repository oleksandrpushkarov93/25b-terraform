resource "aws_security_group" "default" {
  name        = "terraform-dynamic-feature"
  description = "This SG is created using data block lookup"
  vpc_id      = data.aws_vpc.twentyfiveb.id

  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ingress.value.cidr_block
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-dynamic-feature"
  }
}
