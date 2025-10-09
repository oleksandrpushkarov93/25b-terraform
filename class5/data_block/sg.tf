resource "aws_security_group" "default" {
  name        = "terraform-learn-data-block"
  description = "This SG is created using data block lookup"
  vpc_id      = data.aws_vpc.twentyfiveb.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "terraform-learn-data-block"
    env   = "test"
    hello = "world"
  }
}