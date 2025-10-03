resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block

  tags = {
    Name = "25b-vpc"
    env = var.env
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "subnet-1"
    env = var.env
  }
}
