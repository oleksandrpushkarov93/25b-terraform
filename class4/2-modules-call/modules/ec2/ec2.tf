resource "aws_instance" "default" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.instance_subnet_id

  tags = {
    Name = "${var.name}-instance"
    env  = var.env
  }
}

resource "aws_security_group" "default" {
  name        = "allow_http"
  description = "Allow http inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.name}-allow-http"
  }
}

resource "aws_security_group_rule" "ingress" {
  security_group_id = aws_security_group.default.id
  type              = "ingress"
  from_port         = var.port
  to_port           = var.port
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
}

resource "aws_security_group_rule" "egress" {
  security_group_id = aws_security_group.default.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = [var.vpc_cidr]
}