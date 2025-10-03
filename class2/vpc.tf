resource "aws_vpc" "dev" {
  cidr_block       = var.cidr_block

  tags = {
    Name = "25b-vpc"
    env = var.env
    order = var.order
    managed_by_terraform = var.managed_by_terraform
  }
}

resource "aws_subnet" "dev" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "subnet-1"
    env = var.env
    order = var.order
    managed_by_terraform = var.managed_by_terraform
  }
}
